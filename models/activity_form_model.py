import datetime as dt
from pydantic import BaseModel
from models.config import ExerciseEnum


class ActivityFormModel(BaseModel):
    start_date: dt.datetime
    exercise: ExerciseEnum
    description: str
    sets: str
