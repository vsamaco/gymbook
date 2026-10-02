import datetime as dt

from models.notes_model import WorkoutRaw, Workout


def test_workout_from_raw_parses_strength_and_sets():
    raw_workout = WorkoutRaw(
        date=dt.datetime(2025, 6, 1),
        description_raw=[
            "Back squat 5/5\n",
            "5: 45\n",
            "5: 45/45\n",
        ],
    )

    workout = Workout.from_raw(raw_workout)

    assert workout.date == dt.datetime(2025, 6, 1)
    assert workout.exercise == "back_squat"
    assert workout.description == "Back squat 5/5"
    assert workout.description_raw == [
        "Back squat 5/5\n",
        "5: 45\n",
        "5: 45/45\n",
    ]
    assert workout.sets[0].model_dump() == {
        "repetitions": "5",
        "weights": "45",
        "total": 45.0,
    }
