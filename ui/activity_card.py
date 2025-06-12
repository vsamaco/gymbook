import streamlit as st
import plotly.express as px

from processors.activity_processor import ActivityProcessor


class ActivityCard():
    def __init__(self, exercise, df_workouts):
        self.exercise = exercise
        self.activity_processor = ActivityProcessor(df_workouts)

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

    def render(self):
        df_workouts = self.activity_processor.get_dataframe()
        with st.container(border=True):
            st.subheader(f'{self.exercise.title()}', divider=True)

            max_total_activity = self.get_max_set_total_activity()
            last_activities = self.get_last_activities(1)
            recent_activity = last_activities.iloc[0]

            ovcol1, ovcol2 = st.columns(2, border=True)
            ovcol1.html(
                f"""
                <p style="float:right">{max_total_activity['date'].strftime('%m/%d/%y')}</p>
                <p style='font-size: 0.875rem;'>Max Rep Set</p>
                <p style='font-size: 2.25rem;line-height: normal;margin-top:-10px;'>{max_total_activity['max_set_reps']}x {max_total_activity['max_set_total']}</p>
                <p>W: {max_total_activity['max_set']['weights']}</p>
                """
            )

            ovcol2.html(
                f"""
                <p style="float:right">{recent_activity['date'].strftime('%m/%d/%y')}</p>
                <p style='font-size: 0.875rem;'>Recent Set</p>
                <p style='font-size: 2.25rem;line-height: normal;margin-top:-10px;'>{recent_activity['max_set_reps']}x {recent_activity['max_set_total']}</p>
                <p>W: {recent_activity['max_set']['weights']}</p>
                """
            )

            with st.expander('Data'):
                st.dataframe(df_workouts)
            with st.expander('Chart'):
                self.render_chart()
