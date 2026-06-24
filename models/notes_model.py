import datetime as dt
import re
from pydantic import BaseModel


class WorkoutRaw(BaseModel):
    date: dt.datetime
    description_raw: list[str] = []


class WorkoutSet(BaseModel):
    repetitions: str
    weights: str
    total: float


class Workout(BaseModel):
    date: dt.datetime
    exercise: str
    description_raw: list[str]
    description: str
    sets: list[WorkoutSet]

    @classmethod
    def from_raw(cls, raw_workout: WorkoutRaw):
        strength, strength_line = cls.parse_strength(raw_workout)
        sets = cls.parse_sets(raw_workout)

        return cls(
            date=raw_workout.date,
            exercise=strength or "",
            description_raw=raw_workout.description_raw,
            description=strength_line or "",
            sets=sets,
        )

    @classmethod
    def parse_strength(cls, raw_workout: WorkoutRaw):
        STRENGTH_EXERCISES = [
            'back squat',
            'front squat',
            'db bench press',
            'bench press',
            'romanian',
            'sumo deadlift',
            'bstance deadlift',
            'reverse lunge',
            'bulgarian',
            'bb oh press',
            'sldl',
            'deadlift',
        ]

        for line in raw_workout.description_raw:
            for str_exercise in STRENGTH_EXERCISES:
                if str_exercise in line.lower():
                    return [str_exercise.replace(' ', '_'), line.strip()]
        return [None, None]

    @classmethod
    def parse_sets(cls, raw_workout: WorkoutRaw):
        sets = []
        set_regex = r'^(\d+):\s([\d\/.]+)'

        for line in raw_workout.description_raw:
            set_match = re.match(set_regex, line)
            if set_match:
                sets.append(WorkoutSet(
                    repetitions=set_match.group(1),
                    weights=set_match.group(2),
                    total=cls.calculate_weight(set_match.group(2)),
                ))

        return sets

    @classmethod
    def calculate_weight(cls, str_weight):
        [bar, *weights] = str_weight.split('/')

        total_weight = 0
        for weight in weights:
            try:
                total_weight += float(weight)
            except ValueError:
                pass

        return int(bar) + (total_weight * 2)
