import pandas as pd


class ActivityProcessor():
    def __init__(self, df_activities: pd.DataFrame):
        self.df = df_activities.copy()

    def filter_by_exercise(self, exercise: str):
        self.df = self.df[self.df.exercise == exercise]
        return self

    def get_recent_activity(self):
        filtered_activities = self.df[self.df['exercise'].notna()]
        if filtered_activities.empty:
            return None
        return filtered_activities.sort_values('date', ascending=False).head(1).iloc[0]

    def get_exercises(self):
        if self.df.empty:
            return []
        return self.df['exercise'].dropna().unique().tolist()

    def get_dataframe(self):
        return self.df
