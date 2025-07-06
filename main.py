import streamlit as st
from st_supabase_connection import SupabaseConnection
from models.config import ExerciseEnum
from processors.activity_processor import ActivityProcessor
from repository.activity_repository import ActivityRepository
from ui.activity_card import ActivityCard
from ui.login_component import LoginComponent
from ui.new_activity_component import NewActivityComponent
from ui.recent_activity_component import RecentActivityComponent


def init():
    conn = st.connection(
        "supabase", type=SupabaseConnection, ttl=None)

    user = conn.auth.get_user()
    if user:
        user = user.user
    activity_repository = ActivityRepository(conn, user.id if user else None)
    return (conn, user, activity_repository)


def main():
    conn, user, activity_repository = init()

    LoginComponent(conn).render()
    if not user:
        st.stop()

    df_workouts = activity_repository.get_dataframe()
    st.title('Gymbook')

    if st.button('Create Activity'):
        NewActivityComponent(user, activity_repository).render()

    recent_activity = ActivityProcessor(df_workouts).get_recent_activity()
    if recent_activity is not None:
        filtered_activities = ActivityProcessor(
            df_workouts).filter_by_exercise(recent_activity['exercise']).get_dataframe()
        previous_activity = filtered_activities.head(2).iloc[-1]
        RecentActivityComponent(
            recent_activity, previous_activity, activity_repository, user).render()

    select_exercise_type = st.selectbox(
        'Filter Exercise:', options=[None] + list(ExerciseEnum), format_func=lambda e: e.value if e else '', placeholder="Select exercise")

    for exercise_enum in list(ExerciseEnum):
        if select_exercise_type is None or (select_exercise_type and select_exercise_type.value == exercise_enum.value):
            df_strength_workouts = ActivityProcessor(
                df_workouts).filter_by_exercise(exercise_enum.value).get_dataframe()
            ActivityCard(exercise_enum.value, df_strength_workouts,
                         activity_repository, user).render()


main()
