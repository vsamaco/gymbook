import streamlit as st
from st_supabase_connection import SupabaseConnection


class LoginComponent():
    def __init__(self, supabase_client: SupabaseConnection):
        self.supabase_client = supabase_client

    def login(self, email, password):
        try:
            user = self.supabase_client.auth.sign_in_with_password(
                {'email': email, 'password': password})
            return user
        except Exception:
            st.error('Login failed')

    def logout(self):
        self.supabase_client.auth.sign_out()

    @st.dialog('Login')
    def login_form(self):
        with st.form('login_user'):
            email = st.text_input('Email')
            password = st.text_input('Password', type='password')
            if st.form_submit_button('Login'):
                user = self.login(email, password)
                if user:
                    st.rerun()

    def render(self):
        session = self.supabase_client.auth.get_session()
        if session:
            if st.button('Logout'):
                self.logout()
                st.rerun()
        else:
            if st.button('Login'):
                self.login_form()
