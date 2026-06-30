import pandas as pd
from st_supabase_connection import execute_query
from repository.activity_repository import ActivityRepository


class WorkoutSyncer:
    def __init__(self, conn, user_id):
        self.conn = conn
        self.user_id = user_id
        self.repository = ActivityRepository(conn, user_id)

    def get_db_workouts(self):
        return self.repository.get_dataframe()

    def find_new_activities(self, existing_workout: pd.DataFrame, workouts):
        new_activities = []
        for workout in workouts:
            if not workout:
                continue
            if existing_workout.empty:
                matching_workout = pd.DataFrame()
            else:
                matching_workout = existing_workout[(existing_workout.date.dt.date ==
                                                    pd.to_datetime(workout.date).date())]
            if not matching_workout.empty:
                matching_workout = matching_workout.iloc[0]
                print(
                    f'existing: {matching_workout.id} {matching_workout.exercise}')
            else:
                new_activities.append(workout)
                print(
                    f'add new: {pd.to_datetime(workout.date).date()} {workout.exercise}')

        return new_activities

    def save_activities(self, activities):
        for activity in activities:

            data = {
                'exercise': activity.exercise,
                'date': activity.date.isoformat(),
                'description': activity.description,
                'sets': [s.model_dump(mode='json') for s in activity.sets] if hasattr(activity, 'sets') else [],
                'user_id': self.user_id
            }
            execute_query(self.conn.table("activities").insert(data), ttl=0)
