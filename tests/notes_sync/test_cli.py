from unittest.mock import Mock
import pytest
import pandas as pd
from notes_sync.cli import main


@pytest.fixture(name='mock_deps')
def fixture_mock_deps(mocker):
    """Mock all external dependencies"""
    mocker.patch("notes_sync.cli.SupabaseSession")
    mocker.patch("notes_sync.cli.NoteLoader")
    mocker.patch("notes_sync.cli.NoteProcessor")
    mocker.patch("notes_sync.cli.WorkoutSyncer")


def test_main_default_arguments(mock_deps, mocker, capsys):
    """Test main with default arguments"""
    mock_session = Mock()
    mock_session.user_id = "test-user"

    mock_syncer = Mock()
    mock_syncer.get_db_workouts.return_value = pd.DataFrame()
    mock_syncer.find_new_activities.return_value = []

    mock_loader = Mock()
    mock_loader.load_note_markdown.return_value = ["# Gym\n"]

    mock_processor = Mock()
    mock_processor.from_md_workouts.return_value = []

    mocker.patch("notes_sync.cli.SupabaseSession", return_value=mock_session)
    mocker.patch("notes_sync.cli.NoteLoader", return_value=mock_loader)
    mocker.patch("notes_sync.cli.NoteProcessor", return_value=mock_processor)
    mocker.patch("notes_sync.cli.WorkoutSyncer", return_value=mock_syncer)

    main([])

    # Verify default note is "P13"
    mock_loader.load_note_markdown.assert_called_once_with("P13")


def test_main_custom_note_argument(mock_deps, mocker):
    """Test main with custom note name"""
    mock_session = Mock()
    mock_session.user_id = "test-user"

    mock_syncer = Mock()
    mock_syncer.get_db_workouts.return_value = pd.DataFrame()
    mock_syncer.find_new_activities.return_value = []

    mock_loader = Mock()
    mock_loader.load_note_markdown.return_value = ["* Gym\n"]

    mock_processor = Mock()
    mock_processor.from_md_workouts.return_value = []

    mocker.patch("notes_sync.cli.SupabaseSession", return_value=mock_session)
    mocker.patch("notes_sync.cli.NoteLoader", return_value=mock_loader)
    mocker.patch("notes_sync.cli.NoteProcessor", return_value=mock_processor)
    mocker.patch("notes_sync.cli.WorkoutSyncer", return_value=mock_syncer)

    main(["-n", "CustomNote"])

    mock_loader.load_note_markdown.assert_called_once_with("CustomNote")


def test_main_does_not_import_without_flag(mock_deps, mocker):
    """Test that save_activities is NOT called without --import flag"""
    mock_session = Mock()
    mock_session.user_id = "test-user"

    mock_activity = Mock()
    mock_syncer = Mock()
    mock_syncer.get_db_workouts.return_value = pd.DataFrame()
    mock_syncer.find_new_activities.return_value = [mock_activity]

    mock_loader = Mock()
    mock_loader.load_note_markdown.return_value = ["# Gym\n"]

    mock_processor = Mock()
    mock_processor.from_md_workouts.return_value = [mock_activity]

    mocker.patch("notes_sync.cli.SupabaseSession", return_value=mock_session)
    mocker.patch("notes_sync.cli.NoteLoader", return_value=mock_loader)
    mocker.patch("notes_sync.cli.NoteProcessor", return_value=mock_processor)
    mocker.patch("notes_sync.cli.WorkoutSyncer", return_value=mock_syncer)

    main([])

    # Verify save_activities was NOT called
    mock_syncer.save_activities.assert_not_called()


def test_main_imports_with_flag(mock_deps, mocker):
    """Test that save_activities IS called with --import flag"""
    mock_session = Mock()
    mock_session.user_id = "test-user"

    mock_activity = Mock()
    mock_syncer = Mock()
    mock_syncer.get_db_workouts.return_value = pd.DataFrame()
    mock_syncer.find_new_activities.return_value = [mock_activity]

    mock_loader = Mock()
    mock_loader.load_note_markdown.return_value = ["* Gym\n"]

    mock_processor = Mock()
    mock_processor.from_md_workouts.return_value = [mock_activity]

    mocker.patch("notes_sync.cli.SupabaseSession", return_value=mock_session)
    mocker.patch("notes_sync.cli.NoteLoader", return_value=mock_loader)
    mocker.patch("notes_sync.cli.NoteProcessor", return_value=mock_processor)
    mocker.patch("notes_sync.cli.WorkoutSyncer", return_value=mock_syncer)

    main(["--import"])

    # Verify save_activities WAS called
    mock_syncer.save_activities.assert_called_once_with([mock_activity])


def test_main_workflow(mock_deps, mocker,):
    """Test the complete workflow integration"""
    mock_session = Mock()
    mock_session.user_id = "test-user"

    mock_activity1 = Mock()
    mock_activity2 = Mock()

    existing_df = pd.DataFrame({"id": [1], "exercise": ["bench_press"]})

    mock_syncer = Mock()
    mock_syncer.get_db_workouts.return_value = existing_df
    mock_syncer.find_new_activities.return_value = [mock_activity2]

    mock_processor = Mock()
    mock_processor.from_md_workouts.return_value = [
        mock_activity1, mock_activity2]

    mock_loader = Mock()
    mock_loader.load_note_markdown.return_value = [
        "* Gym *\n", "**6/25** Bench\n"]

    mocker.patch("notes_sync.cli.SupabaseSession", return_value=mock_session)
    mocker.patch("notes_sync.cli.NoteLoader", return_value=mock_loader)
    mocker.patch("notes_sync.cli.NoteProcessor", return_value=mock_processor)
    mocker.patch("notes_sync.cli.WorkoutSyncer", return_value=mock_syncer)

    main(["--import", "-n", "GymNote"])

    # Verify workflow order
    assert mock_session.connect.called
    mock_loader.load_note_markdown.assert_called_once_with("GymNote")
    mock_processor.from_md_workouts.assert_called_once()
    mock_syncer.get_db_workouts.assert_called_once()
    mock_syncer.find_new_activities.assert_called_once_with(
        existing_df, [mock_activity1, mock_activity2])
    mock_syncer.save_activities.assert_called_once_with([mock_activity2])
