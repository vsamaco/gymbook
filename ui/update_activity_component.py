from pydantic import ValidationError
import streamlit as st

from models.activity_form_model import ActivityFormModel
from models.config import ExerciseEnum
from repository.activity_repository import ActivityRepository


class UpdateActivityComponent():
    def __init__(self, activity, activity_repository: ActivityRepository):
        self.activity = activity
        self.activity_repository = activity_repository

    def parse_sets(self, sets_data):
        result = ''
        for set_item in sets_data:
            result += f"{set_item['repetitions']}: {set_item['weights']}\n"

        return result

    @st.dialog('Update Activity')
    def render(self):
        with st.container(border=False):
            st.subheader(f'Activity: {self.activity.id}')
            form = st.form(
                f'update_workout_{self.activity.id}', clear_on_submit=False)
            start_date = form.date_input('Date', self.activity['date'])
            exercise = form.selectbox(
                'Exercise', options=list(ExerciseEnum), format_func=lambda e: e.value, index=list(ExerciseEnum).index(self.activity.exercise))
            description = form.text_input(
                'Description', value=self.activity['description'])
            sets_data = form.text_area(
                'Sets', placeholder="10: 45/10/15", value=self.parse_sets(self.activity.sets))

            btn_col1, btn_col2 = form.columns([0.5, 0.5])
            if btn_col1.form_submit_button('Save'):
                try:
                    updated_activity = ActivityFormModel(
                        start_date=start_date,
                        exercise=exercise,
                        description=description,
                        sets=sets_data,
                    )

                    result = self.activity_repository.update(self.activity['id'], {
                        'start_date': updated_activity.start_date,
                        'exercise': updated_activity.exercise.value,
                        'description': updated_activity.description,
                        'sets': updated_activity.sets
                    })

                    st.success('Update success')
                    st.rerun()
                except ValidationError as err:
                    print('update error', err.errors())
                    for e in err.errors():
                        st.error(e)

            if btn_col2.form_submit_button('Delete', type='secondary'):
                try:
                    result = self.activity_repository.destroy(
                        self.activity['id'])
                    st.success('Delete success')
                    st.rerun()
                except Exception as e:
                    print('delete error', e)
                    st.error('Delete error')
