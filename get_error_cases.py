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
    execution_results = [file.split('.')[0] for file in os.listdir('./execution_results/')]
    print(execution_results)
    # assert 1==0
    non_executable_case_ids = []
    for file in os.listdir('./query_results/'):
        query_id = file.split('.')[0]
        if query_id not in execution_results:
            non_executable_case_ids.append(query_id)
    print(len(non_executable_case_ids))
    non_executable_cases = []
    with open('predicted_results.jsonl', 'r') as f:
        for line in f.readlines():
            tmp = json.loads(line)
            if str(tmp['id']) in non_executable_case_ids:
                non_executable_cases.append(line)
    with open("./error_cases/non_executable.jsonl", 'w') as f:
        for case in non_executable_cases:
            f.write(case)
        
if __name__=='__main__':
    # error_without_SQL()
    error_non_executable()