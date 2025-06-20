import json
import re

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
        month, day = match.group(1), match.group(2)
        prev_month = workouts[-1]['date'].split(
            '/')[0] if len(workouts) > 0 else None
        if prev_month and int(month) < int(prev_month):
            year += 1

        workouts.append({
            'date': f"{match.group(1)}/{match.group(2)}/{year}",
            'description': [],
            'strength': '',
            'strength_description': '',
            'sets': [],
        })
    else:
        workout = workouts[-1]
        workout['description'].append(line)


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
    [strength, strength_line] = parse_strength(workout['description'])
    print(f"{index}: {workout['date']}")
    print(strength)

    if strength:
        sets = parse_sets(workout['description'][1:])
        if (sets):
            workouts[index]['strength'] = strength.replace(' ', '_')
            workouts[index]['strength_description'] = strength_line.strip()
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

with open(WORKOUTS_JSON_PATH, 'w', encoding='utf8') as file:
    for workout in workouts:
        del workout['description']
    file.write(json.dumps(workouts, indent=2))

for exercise in unique_workouts:
    workout = unique_workouts[exercise]
    print(
        f"{exercise}: min:{workout['min']['total']} ({workout['min']['date']}) max:{workout['max']['total']} ({workout['max']['date']})")
