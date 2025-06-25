import streamlit as st
import plotly.express as px

from processors.activity_processor import ActivityProcessor
from ui.update_activity_component import UpdateActivityComponent


class ActivityCard():
    def __init__(self, exercise, df_workouts, activity_repository, user):
        self.exercise = exercise
        self.activity_processor = ActivityProcessor(df_workouts)
        self.activity_repository = activity_repository
        self.user = user

    def get_max_set_total_activity(self):
        df_workouts = self.activity_processor.get_dataframe()
        return df_workouts.loc[df_workouts['max_set_total'].idxmax()]

    def get_last_activities(self, num_activities):
        df_workouts = self.activity_processor.get_dataframe()
        return df_workouts.sort_values('date', ascending=False).head(num_activities)

    def get_first_activity(self):
        df_workouts = self.activity_processor.get_dataframe()
        return df_workouts.loc[df_workouts['date'].idxmin()]

    def render_chart(self):
        df_workouts = self.activity_processor.get_dataframe()
        fig = px.bar(
            df_workouts,
            x="date",
            y="max_set_total",
            labels={
              'max_set_total': "Total Weight",
              'date': 'Date'
            }
        )
        st.plotly_chart(fig)

    def render_set_metric(self, title, activity):
        start_date = activity['date']
        max_set = activity['max_set']
        max_set_total = activity['max_set_total']
        max_set_reps = activity['max_set_reps']

        result = f"""
            <p style="float:right">{start_date.strftime('%m/%d/%y')}</p>
            <p style='font-size: 0.875rem;'>{title}</p>"""

        max_set_reps_total = f"{max_set_reps}x {max_set_total}" if max_set_reps and max_set_total else 'N/A'
        result += f"""
            <p style='font-size: 2.25rem;line-height: normal;margin-top:-10px;'>{max_set_reps_total}</p>"""

        if max_set:
            result += f"""
                <p>W: {max_set['weights']}</p>
            """
        return result

    def render(self):
        df_workouts = self.activity_processor.get_dataframe()
        with st.container(border=True):
            st.subheader(f'{self.exercise.replace('_', ' ')}', divider=True)

            max_total_activity = self.get_max_set_total_activity()
            last_activities = self.get_last_activities(1)
            recent_activity = last_activities.iloc[0]

            ovcol1, ovcol2 = st.columns(2, border=True)
            ovcol1.html(
                self.render_set_metric(
                    'Recent Set',
                    recent_activity
                )
            )
            ovcol2.html(
                self.render_set_metric(
                    'Max Set',
                    max_total_activity
                )
            )

            with st.expander('Data'):
                # st.dataframe(df_workouts)
                df_workouts = df_workouts[[
                    'id', 'date', 'exercise', 'description', 'sets']]

                selected_row = st.dataframe(
                    df_workouts,
                    key=f'data_{self.exercise}',
                    hide_index=True,
                    column_config={"sets": st.column_config.JsonColumn()},
                    on_select='rerun',
                    selection_mode='single-row',
                )
                if selected_row['selection']['rows']:
                    selected_indices = selected_row['selection']['rows']
                    selected_data = df_workouts.iloc[selected_indices]
                    if not selected_data.empty:
                        UpdateActivityComponent(
                            selected_data.iloc[0], self.user, self.activity_repository).render()

            with st.expander('Chart'):
                self.render_chart()
