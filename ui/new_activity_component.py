from pydantic import ValidationError
import streamlit as st
from models.activity_form_model import ActivityFormModel
from models.config import ExerciseEnum
from repository.activity_repository import ActivityRepository


class NewActivityComponent():
    def __init__(self, user, activity_repo: ActivityRepository):
        self.activity_repository = activity_repo
        self.user = user

    @st.dialog('Create Activity')
    def render(self):
        with st.container(border=False):
            form = st.form('create_activity',
                           clear_on_submit=False, enter_to_submit=False)
            start_date = form.date_input('Date')
            exercise = form.selectbox(
                'Exercise', options=list(ExerciseEnum), format_func=lambda e: e.value)
            description = form.text_area('Description')
            sets_data = form.text_area('Sets', placeholder="10: 45/10/15")

            if form.form_submit_button('Submit'):
                try:
                    new_activity = ActivityFormModel(
                        start_date=start_date,
                        exercise=exercise,
                        description=description,
                        sets=sets_data,
                    )
                    result = self.activity_repository.create(
                        user_id=self.user.id,
                        start_date=new_activity.start_date,
                        exercise=new_activity.exercise.value,
                        description=new_activity.description,
                        sets=new_activity.sets,
                    )

                    if result:
                        form.success('Activity Created')
                        st.rerun()
                except ValidationError as err:
                    print(err.errors())
                    for e in err.errors():
                        st.error(e)
                except Exception as e:
                    print('update error', e)
                    st.error(e)
