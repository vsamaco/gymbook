# Gymbook

## Requirements

- Python 3.12
- Supabase Postgres
- Streamlit
- Pandas

## Setup

1. Copy ./streamlit/secrets.toml.example to secrets.toml
2. For local postgres, install [Supabase CLI](https://supabase.com/docs/guides/local-development/cli/getting-started)
3. Run `supabase start` to start supabase containers, which run db migration and db seed on first run.
4. Run `supabase status` and update .streamlit/secrets.toml with `SUPABASE_URL=API URL` and `SUPABASE_TOKEN=anon key`
5. Install dependencies:
   `pip install -r requirements.txt`
6. Run streamlit:
   `streamlit run main.py`
7. Visit application: `http://localhost:8501`
