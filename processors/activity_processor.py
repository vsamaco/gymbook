import pandas as pd


class ActivityProcessor():
    def __init__(self, df_activities: pd.DataFrame):
        self.df = df_activities
        self.original_df = self.df.copy()

    def filter_by_exercise(self, exercise: str):
        self.df = self.df[self.df.exercise == exercise]
        return self

    def get_exercises(self):
        if self.df.empty:
            return []
        return self.df['exercise'].dropna().unique().tolist()

    def get_dataframe(self):
        return self.df
