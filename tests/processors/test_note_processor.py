import datetime as dt

from processors.note_processor import NoteProcessor


def test_from_md_workouts_parses_workouts_and_skips_header_line():
    md_text = [
        "# Gym\n",
        "**6/1 Lower Strength**\n",
        "Back squat 5/5\n",
        "5: 45\n",
        "5: 45/45\n",
        "**6/2 Upper Strength**\n",
        "Bench press 10/8\n",
        "10: 45\n",
        "8: 45/25\n"
    ]

    workouts = NoteProcessor.from_md_workouts(md_text, current_year=2025)

    assert len(workouts) == 2
    assert workouts[0].date == dt.datetime(2025, 6, 1)
    assert workouts[0].exercise == 'back_squat'

    assert workouts[1].date == dt.datetime(2025, 6, 2)
    assert workouts[1].exercise == 'bench_press'


def test_from_md_workouts_rolls_year_forward_when_month_decreases():
    md_text = [
        "# Gym\n",
        "**11/30 Strength**\n",
        "Back squat 5/5\n",
        "5: 45\n",
        "**1/2 Strength**\n",
        "Bench press 5/5\n",
        "5: 45\n"
    ]

    workouts = NoteProcessor.from_md_workouts(md_text, current_year=2025)

    assert workouts[0].date == dt.datetime(2025, 11, 30)
    assert workouts[1].date == dt.datetime(2026, 1, 2)
