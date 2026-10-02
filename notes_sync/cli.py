import logging
import sys
import argparse

from processors.note_processor import NoteProcessor
from .auth import SupabaseSession
from .loader import NoteLoader
from .syncer import WorkoutSyncer

logging.basicConfig(
        level=logging.INFO,
        format="%(name)s: %(message)s",
    )


def main(argv=None):
    if argv is None:
        argv = sys.argv[1:]

    parser = argparse.ArgumentParser(
        description="Sync Apple Notes workouts to the DB")
    parser.add_argument("-n", "--note", dest="note", default="P13",
                        help="Note title (without .md) to export and process")
    parser.add_argument("--import", dest="do_import", action="store_true",
                        help="Persist found new activities to the database")
    args = parser.parse_args(argv)

    NOTE_TO_FIND = args.note
    IMPORT_ACTIVITIES = args.do_import

    session = SupabaseSession("config/notes_sync.toml")
    try:
        session.connect()
    except:
        raise Exception('Failed session connect')

    syncer = WorkoutSyncer(session.conn, session.user_id)
    loader = NoteLoader("config/notes_sync.toml")
    processor = NoteProcessor()

    try:
        gym_notes = loader.load_note_markdown(NOTE_TO_FIND)
    except:
        raise Exception('Note loader error')
    gym_activities = processor.from_md_workouts(gym_notes, 2022)
    existing_activities = syncer.get_db_workouts()

    new_activities = syncer.find_new_activities(
        existing_activities, gym_activities)
    logging.info(f"total new: {len(new_activities)}")

    if IMPORT_ACTIVITIES:
        syncer.save_activities(new_activities)


if __name__ == "__main__":
    main()
