import streamlit as st
import pandas as pd

from repository.activity_repository import ActivityRepository
from ui.update_activity_component import UpdateActivityComponent


class RecentActivityComponent():
    def __init__(self, recent_activity: pd.Series, previous_activity: pd.Series, activity_repository: ActivityRepository, user):
        self.recent_activity = recent_activity
        self.previous_activity = previous_activity
        self.activity_repository = activity_repository
        self.user = user

    def get_sets_volume(self, activity_sets):
        volume = 0
        for single_set in activity_sets:
            volume += single_set['total']
        return volume

    def render(self):
        with st.container(border=True):
            st.markdown(
                f'''
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <h3>{self.recent_activity.exercise.replace('_', ' ')}</h3>
                    <div style="padding: 0.75em 0;">{self.recent_activity.date.strftime('%m/%d/%y')}</div>
                </div>
                <hr style="margin-top: 0;" />
                ''',
                unsafe_allow_html=True,
            )
            st.write(self.recent_activity.description)
            delta_max_set_total = ((
                self.recent_activity['max_set_total'] - self.previous_activity['max_set_total']) / self.previous_activity['max_set_total']) * 100
            previous_max_set_date = self.previous_activity['date'].strftime(
                '%m-%d')

            recent_activity_volume = self.get_sets_volume(
                self.recent_activity['sets'])
            previous_activity_volume = self.get_sets_volume(
                self.previous_activity['sets'])
            delta_volume = ((recent_activity_volume -
                            previous_activity_volume) / previous_activity_volume) * 100

            c3, c4, c5 = st.columns(3, border=True)
            c3.metric('Num Sets', len(self.recent_activity.sets))
            c4.metric(
                'Max Set', f"{self.recent_activity.max_set_reps}x {self.recent_activity.max_set_total}", f"{delta_max_set_total:.1f}% since {previous_max_set_date}")
            c5.metric('Total Volume', self.get_sets_volume(
                self.recent_activity['sets']), delta=f"{delta_volume:.1f}% since {previous_max_set_date}")

            df_sets = pd.DataFrame(
                {
                    'Repetitions': [s['repetitions'] for s in self.recent_activity.sets],
                    'Total': [round(s['total']) for s in self.recent_activity.sets],
                    'Weights': [s['weights'] for s in self.recent_activity.sets],
                }
            )
            df_sets.rename(index=lambda x: x + 1, inplace=True)
            st.dataframe(df_sets, column_config={
                "Repetitions": st.column_config.NumberColumn("reps"),
                "Weights": st.column_config.TextColumn("weights", width="small"),
                "Total": st.column_config.NumberColumn("total"),
            })

            if self.user and st.button('Edit'):
                UpdateActivityComponent(
                    self.recent_activity, self.user, self.activity_repository).render()
