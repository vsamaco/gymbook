import streamlit as st
import pandas as pd

from repository.activity_repository import ActivityRepository
from ui.update_activity_component import UpdateActivityComponent


class RecentActivityComponent():
    def __init__(self, activity: pd.Series, activity_repository: ActivityRepository, user):
        self.activity = activity
        self.activity_repository = activity_repository
        self.user = user

    def get_sets_volume(self):
        volume = 0
        for single_set in self.activity.sets:
            volume += single_set['total']
        return volume

    def render(self):
        with st.container(border=True):
            st.markdown(
                f'''
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <h3>{self.activity.exercise.replace('_', ' ')}</h3>
                    <div style="padding: 0.75em 0;">{self.activity.date.strftime('%m/%d/%y')}</div>
                </div>
                <hr style="margin-top: 0;" />
                ''',
                unsafe_allow_html=True,
            )
            st.write(self.activity.description)

            c3, c4, c5 = st.columns(3, border=True)
            c3.metric('Num Sets', len(self.activity.sets))
            c4.metric(
                'Max Set', f"{self.activity.max_set_reps}x {self.activity.max_set_total}")
            c5.metric('Total Volume', self.get_sets_volume())

            df_sets = pd.DataFrame(
                {
                    'Repetitions': [s['repetitions'] for s in self.activity.sets],
                    'Weights': [s['weights'] for s in self.activity.sets],
                    'Total': [round(s['total']) for s in self.activity.sets],
                }
            )
            df_sets.rename(index=lambda x: x + 1, inplace=True)
            st.dataframe(df_sets, column_config={
                "Repetitions": st.column_config.NumberColumn("reps"),
                "Weights": st.column_config.TextColumn("weights", width="small"),
                "Total": st.column_config.NumberColumn("total"),
            })

            if st.button('Edit'):
                UpdateActivityComponent(
                    self.activity, self.user, self.activity_repository).render()
