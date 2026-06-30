# Gymbook

## Requirements

- Python 3.12
- Supabase Postgres
- Streamlit
- Pandas

## Client Setup

1. Install dependencies:
   `pip install -r requirements.txt`
2. Copy ./streamlit/secrets.toml.example to `secrets.toml`
3. For local postgres, install [Supabase CLI](https://supabase.com/docs/guides/local-development/cli/getting-started)
   - Run `supabase start` to start supabase containers, which run db migration and db seed on first run.
   - Run `supabase status` and update `secrets.toml` with `SUPABASE_URL=API URL`
   - Visit Supabase Project Settings / API Keys / Legacy anon and update `secrets.toml` with `SUPABASE_TOKEN=anon key`
4. Run streamlit:
   `streamlit run main.py`
5. Visit application: `http://localhost:8501`

## Data Import

1. Create an import user in Supabase / Authentication with username and password and auto confirm user
2. Copy `workout_data/config.example.toml` to `config.toml` and setup env variables:

- IMPORT_USERNAME # import user username
- IMPORT_PASSWORD # import user password
- EXPORT_NOTE_PATH = 'exported_notes' # folder path for markdown exporting and loading

3. Get the name of Apple Notes containing workouts
4. Run `notes_sync.py` with --note flag (default: P13) to import file as markdown and compare workouts with the database.
   See

```
# Import and compare
python notes_sync.py --note <note_name>

# alternate with default note (P13)
python notes_sync.py

```

5. Run `notes_sync.py` with import flag to persist new activities

```
# Persist new activities to database
python notes_sync.py --import

```
