import datetime as dt
import re
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
        df.sort_values('date', inplace=True, ascending=False)
        return df

    def create(self, start_date: dt.datetime, exercise: str, description: str, sets: str):
        data = {
            "date": start_date.isoformat(),
            "exercise": exercise,
            "description": description,
            "sets": self._parse_activity_sets(sets),
        }
        response = execute_query(self.db.table("activities").insert(data))
        return response

    def update(self, activity_id, updated_data: dict):
        data = {
            "date": updated_data['start_date'].isoformat(),
            "exercise": updated_data['exercise'],
            "description": updated_data['description'],
            "sets": self._parse_activity_sets(updated_data['sets']),
        }
        response = execute_query(self.db.table(
            'activities').update(data).eq("id", activity_id))
        return response

    def destroy(self, activity_id):
        response = execute_query(self.db.table(
            'activities').delete().eq('id', activity_id))
        return response

    def _parse_activity_sets(self, sets_data: str):
        result = []
        for line in sets_data.split('\n'):
            set_regex = r'^(\d+):\s([\d\/.]+)'
            set_match = re.match(set_regex, line)
            if set_match:
                result.append({
                    'repetitions': set_match.group(1),
                    'weights': set_match.group(2),
                    'total': self._calculate_weight(set_match.group(2)),
                })

        return result

    def _calculate_weight(self, weight_str):
        [bar, *weights] = weight_str.split('/')
        return int(bar) + (sum([float(weight) for weight in weights]) * 2)
