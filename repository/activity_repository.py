import pandas as pd
import requests


class ActivityRepository():
    def __init__(self, workout_url):
        # self.workout_json = workout_json
        self.workout_url = workout_url
        self.workout_json = None

    def _get_workout_data(self):
        response = requests.get(self.workout_url, timeout=1000)
        response.raise_for_status()
        return response.json()

    def get_dataframe(self):
        if not self.workout_json:
            self.workout_json = self._get_workout_data()

        df = pd.DataFrame(self.workout_json)
        df['date'] = pd.to_datetime(df['date'])
        df['strength'] = df['strength'].replace('', pd.NA)
        df['max_set'] = df['sets'].apply(
            lambda x: max(x, key=lambda row: float(row['total'])) if x else None)
        df['max_set_total'] = df['max_set'].apply(
            lambda x: x['total'] if isinstance(x, dict) and 'total' in x else None)
        df['max_set_reps'] = df['max_set'].apply(
            lambda x: x['repetitions'] if isinstance(x, dict) and 'total' in x else None)
        df.sort_values('date', inplace=True)
        return df
