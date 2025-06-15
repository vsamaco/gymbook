import streamlit as st
from st_supabase_connection import SupabaseConnection
from processors.activity_processor import ActivityProcessor
from repository.activity_repository import ActivityRepository
from ui.activity_card import ActivityCard


def init():
    conn = st.connection("supabase", type=SupabaseConnection, ttl=None)
    activity_repository = ActivityRepository(conn)
    df_workouts = activity_repository.get_dataframe()
    activity_processor = ActivityProcessor(df_workouts)
    exercises: list[str] = activity_processor.get_exercises()

    return (df_workouts, exercises)


def main():
    df_workouts, exercises = init()
    st.title('Gymbook')

    select_exercise_type = st.selectbox(
        'Filter Exercise:', exercises, None)

    for exercise in exercises:
        if select_exercise_type is None or (select_exercise_type and select_exercise_type == exercise):
            df_strength_workouts = ActivityProcessor(
                df_workouts).filter_by_exercise(exercise).get_dataframe()
            ActivityCard(exercise, df_strength_workouts).render()


main()
