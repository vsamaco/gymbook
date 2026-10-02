from datetime import datetime
from unittest.mock import Mock
import pandas as pd
import pytest
from notes_sync.syncer import WorkoutSyncer


@pytest.fixture(name="workout_syncer")
def fixture_workout_syncer():
    mock_conn = Mock()
    return WorkoutSyncer(mock_conn, user_id="test-user-id")


def test_get_db_workouts(workout_syncer, mocker):
    """Test that get_db_workouts returns dataframe from repository"""
    mock_df = pd.DataFrame({"id": [1], "exercise": ["back_squat"]})
    mocker.patch.object(
        workout_syncer.repository, "get_dataframe", return_value=mock_df
    )

    result = workout_syncer.get_db_workouts()
    assert result.equals(mock_df)


def test_find_new_activities_empty_db_workouts(workout_syncer):
    """Test comparing when no existing workouts"""
    empty_df = pd.DataFrame()

    # Mock workout object
    workout = Mock(date="2025-06-25", exercise="back_squat")

    new_activities = workout_syncer.find_new_activities(empty_df, [workout])

    assert len(new_activities) == 1
    assert new_activities[0] == workout


def test_find_new_activities_with_existing_match(workout_syncer):
    """Test comparing when matching workout exists"""
    existing_df = pd.DataFrame({
        "id": [1],
        "exercise": ["back_squat"],
        "date": pd.to_datetime(["2025-06-25"])
    })

    workout = Mock(date="2025-06-25", exercise="back_squat")

    new_activities = workout_syncer.find_new_activities(existing_df, [workout])

    # returns no new activities
    assert len(new_activities) == 0


def test_find_new_activities_no_match(workout_syncer):
    """Test find when no matching workout found from existing activities"""
    existing_df = pd.DataFrame({
        "id": [1],
        "exercise": ["bench_press"],
        "date": pd.to_datetime(["2025-06-24"])
    })

    workout = Mock(date="2025-06-25", exercise="back_squat")

    new_activities = workout_syncer.find_new_activities(existing_df, [workout])

    # returns new activity
    assert len(new_activities) == 1
    assert new_activities[0] == workout


def test_find_new_activities_filters_none(workout_syncer):
    """Test that None/empty workouts are filtered"""
    empty_df = pd.DataFrame()

    workout = Mock(date="2025-06-25", exercise="back_squat")

    new_activities = workout_syncer.find_new_activities(
        empty_df, [None, workout, ""])

    # returns single valid new activity and excludes empty
    assert len(new_activities) == 1


def test_save_activities(workout_syncer, mocker):
    """Test saving activities"""
    mock_execute = mocker.patch("notes_sync.syncer.execute_query")

    activity = Mock()
    activity.exercise = "back_squat"
    activity.date = datetime(2025, 6, 25)
    activity.description = "back squat 10/8/5"
    activity.sets = [Mock(model_dump=Mock(return_value={"reps": 10}))]

    workout_syncer.save_activities([activity])

    assert mock_execute.called
