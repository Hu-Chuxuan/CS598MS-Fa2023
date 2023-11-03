import json
from tqdm import tqdm
from run_prediction import TEMPLATE
from post_processing import extract_SQL
import os
def error_without_SQL():
    data = []
    with open("predicted_results.jsonl", 'r') as f:
        for line in f.readlines():
            data.append(json.loads(line))

    with open("./error_cases/without_SQL.jsonl", 'w') as f:  
        for item in tqdm(data):
            statement = extract_SQL(item)
            if statement is None:
                prompt = TEMPLATE.format(user_query = item['query'], user_history = item['history'])
                item['input_prompt'] = prompt
                f.write(json.dumps(item) + '\n')
def error_non_executable():
    ececution_results = os.listdir('./execution__results/')
    for file in os.listdir('./query_results/'):
        query_id = file.split('.')[0]
        
if __name__=='__main__':
    error_non_executable()