import pandas as pd
from st_supabase_connection import SupabaseConnection, execute_query


class ActivityRepository():
    def __init__(self, conn: SupabaseConnection):
        self.db = conn
        self.workout_json = None

    def _get_db_workouts(self):
        response = execute_query(self.db.table(
            "activities").select("*"), ttl=0)
        return response.data

    def get_dataframe(self):
        if not self.workout_json:
            self.workout_json = self._get_db_workouts()
        if not self.workout_json:
            return pd.DataFrame()

        df = pd.DataFrame(self.workout_json)

        df['date'] = pd.to_datetime(df['date'])
        df['exercise'] = df['exercise'].replace('', pd.NA)
        df['max_set'] = df['sets'].apply(
            lambda x: max(x, key=lambda row: float(row['total'])) if x else None)
        df['max_set_total'] = df['max_set'].apply(
            lambda x: x['total'] if isinstance(x, dict) and 'total' in x else None)
        df['max_set_reps'] = df['max_set'].apply(
            lambda x: x['repetitions'] if isinstance(x, dict) and 'total' in x else None)
        df.sort_values('date', inplace=True)
        return df
