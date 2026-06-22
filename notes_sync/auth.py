import toml
import streamlit as st
from st_supabase_connection import SupabaseConnection


class SupabaseSession:
    def __init__(self, config_path="workout_data/config.toml"):
        self.config_path = config_path
        self.conn = None
        self.user_id = None

    def load_credentials(self):
        with open(self.config_path, "r") as f:
            config = toml.load(f)
        return config["IMPORT_USERNAME"], config["IMPORT_PASSWORD"]

    def connect(self):
        username, password = self.load_credentials()
        conn = st.connection("supabase", type=SupabaseConnection, ttl=None)
        conn.auth.sign_in_with_password(
            credentials={"email": username, "password": password}
        )
        user = conn.auth.get_user()
        if not user:
            raise Exception("User not found")
        self.conn = conn
        self.user_id = user.user.id
        return self
