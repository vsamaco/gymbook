import re
import datetime as dt
import streamlit as st
from st_supabase_connection import SupabaseConnection, execute_query
import toml
import pandas as pd

from repository.activity_repository import ActivityRepository

with open('workout_data/config.toml', 'r') as f:
    config = toml.load(f)
USERNAME = config['IMPORT_USERNAME']
PASSWORD = config['IMPORT_PASSWORD']

conn = st.connection(
    "supabase", type=SupabaseConnection, ttl=None)
conn.auth.sign_in_with_password(
    credentials={'email': USERNAME, 'password': PASSWORD})
user = conn.auth.get_user()
if not user:
    raise Exception('User not found')
    exit()
USER_ID = user.user.id

WORKOUTS_MD_PATH = 'workout_data/workouts.md'
WORKOUTS_JSON_PATH = 'workout_data/workouts.json'

with open(WORKOUTS_MD_PATH) as file:
    md_text = [line for line in file.readlines()]
print(len(md_text), md_text[1])

workouts = []
heading_regex = r'^\*+(\d+)\/(\d+)(.*)\*\*'


year = 2022
for line in md_text[1:]:
    if line.strip() == '':
        continue

    match = re.match(heading_regex, line)
    if match:
        month, day = int(match.group(1)), int(match.group(2))
        # prev_month = workouts[-1]['date'].split(
        #     '/')[0] if len(workouts) > 0 else None
        last_activity_month = (
            workouts[-1]['date']).month if len(workouts) else None
        if last_activity_month and int(month) < int(last_activity_month):
            year += 1

        workouts.append({
            'date': dt.datetime(year=year, month=month, day=day),
            'exercise': '',
            'description_raw': [],
            'description': '',
            'sets': [],
            'user_id': USER_ID,
        })
    else:
        workout = workouts[-1]
        workout['description_raw'].append(line)


# dl => deadlift, rdl => romanian deadlift, sumo => sumo deadlift
strength_exercises = [
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


def parse_strength(description):
    for line in description:
        for str_exercise in strength_exercises:
            if str_exercise in line.lower():
                return [str_exercise, line]
    return [None, None]


def parse_sets(description):
    sets = []
    for line in description:
        set_regex = r'^(\d+):\s([\d\/.]+)'
        set_match = re.match(set_regex, line)
        if set_match:
            sets.append({
                'repetitions': set_match.group(1),
                'weights': set_match.group(2),
                'total': calculate_weight(set_match.group(2)),
            })

    return sets


def calculate_weight(str_weight):
    [bar, *weights] = str_weight.split('/')
    return int(bar) + (sum([float(weight) for weight in weights]) * 2)


unique_workouts = dict()

for index, workout in enumerate(workouts):
    [strength, strength_line] = parse_strength(workout['description_raw'])
    print(f"{index}: {workout['date']}")
    print(strength)

    if strength:
        sets = parse_sets(workout['description_raw'][1:])
        if (sets):
            workouts[index]['exercise'] = strength.replace(' ', '_')
            workouts[index]['description'] = strength_line.strip()
            workouts[index]['sets'] = sets

            max_set = max(sets, key=lambda item: item['total'])
            print('max sets:', max_set)

            current_set = {
                'date': workout['date'], 'reps': max_set['repetitions'], 'total': max_set['total']}

            if strength not in unique_workouts:
                unique_workouts[strength] = {
                    'min': current_set,
                    'max': current_set,
                }
            elif ((current_set['total'] > unique_workouts[strength]['max']['total'])):
                unique_workouts[strength]['max'] = current_set

    print('\n')


for exercise in unique_workouts:
    workout = unique_workouts[exercise]
    print(
        f"{exercise}: min:{workout['min']['total']} ({workout['min']['date']}) max:{workout['max']['total']} ({workout['max']['date']})")


def add_activity(data):
    activity = {
        'exercise': data['exercise'],
        'date': data['date'].isoformat(),
        'description': data['description'],
        'sets': data['sets'],
        'user_id': data['user_id']
    }
    print(f'add: {activity['date']}')
    execute_query(conn.table("activities").insert(activity), ttl=0)


existing_workouts = ActivityRepository(conn).get_dataframe(user_id=USER_ID)

for workout in workouts:

    matching_workout = existing_workouts[(existing_workouts.date.dt.date ==
                                         pd.to_datetime(workout['date']).date())]
    if len(matching_workout):
        print(
            f'existing: {matching_workout.iloc[0].id} {matching_workout.iloc[0].exercise}')
    else:
        # print(
        #     f'add new: {pd.to_datetime(workout['date']).date()} {workout['exercise']}')
        add_activity(workout)
