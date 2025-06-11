class ActivityProcessor():
    def __init__(self, df_activities):
        self.df = df_activities
        self.original_df = self.df.copy()

    def filter_by_strength_type(self, strength_type: str):
        self.df = self.df[self.df.strength == strength_type]
        return self

    def get_strength_types(self):
        return self.df['strength'].dropna().unique().tolist()

    def get_dataframe(self):
        return self.df
