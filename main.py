import os
import streamlit as st
from dotenv import load_dotenv

from processors.activity_processor import ActivityProcessor
from repository.activity_repository import ActivityRepository
from ui.activity_card import ActivityCard

load_dotenv()
WORKOUT_URL = os.environ.get('WORKOUT_URL', '')


def init():
    activity_repository = ActivityRepository(WORKOUT_URL)
    df_workouts = activity_repository.get_dataframe()
    activity_processor = ActivityProcessor(df_workouts)
    strength_types: list[str] = activity_processor.get_strength_types()

    return (df_workouts, strength_types)


def main():
    df_workouts, strength_types = init()
    st.title('Gymbook')

    select_strength_type = st.selectbox(
        'Filter Exercise:', strength_types, None)

    for strength in strength_types:
        if select_strength_type is None or (select_strength_type and select_strength_type == strength):
            df_strength_workouts = ActivityProcessor(
                df_workouts).filter_by_strength_type(strength).get_dataframe()
            ActivityCard(strength, df_strength_workouts).render()


main()
