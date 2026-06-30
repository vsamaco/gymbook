import re
import datetime as dt
from models.notes_model import WorkoutRaw, Workout


class NoteProcessor:
    HEADING_REGEX = r'^\*\*(\d+)/(\d+)(.*)\*\*'

    def from_md_workouts(self, md_text, current_year):
        print("process from md workouts")
        raw_workouts: list[WorkoutRaw] = []
        skip_top = True

        for line in md_text[1:]:
            if line.strip() == '':
                continue
            match = re.match(self.HEADING_REGEX, line)

            if match:
                skip_top = False
                month, day = int(match.group(1)), int(match.group(2))

                last_activity_month = (
                    raw_workouts[-1].date).month if len(raw_workouts) else None
                if last_activity_month and int(month) < int(last_activity_month):
                    current_year += 1

                workout_note = WorkoutRaw(
                    date=dt.datetime(year=current_year,
                                     month=month, day=day),
                )
                raw_workouts.append(workout_note)
            elif skip_top:
                continue
            else:
                workout = raw_workouts[-1]
                workout.description_raw.append(line)

        processed_workouts = [Workout.from_raw(
            raw_workout) for raw_workout in raw_workouts]

        return processed_workouts
