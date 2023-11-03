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
    id2query = {}
    for file in os.listdir('./query_results/'):
        query_id = file.split('.')[0]
        if query_id not in execution_results:
            non_executable_case_ids.append(query_id)
            file_path = os.path.join('./query_results/', file)
            with open(file_path, 'r') as f:
                id2query[query_id] = f.read()
    print(len(non_executable_case_ids))
    non_executable_cases = []
    with open('predicted_results.jsonl', 'r') as f:
        for line in f.readlines():
            tmp = json.loads(line)
            if str(tmp['id']) in non_executable_case_ids:
                tmp['extracted_SQL'] = id2query[str(tmp['id'])]
                non_executable_cases.append(tmp)
    with open("./error_cases/non_executable.jsonl", 'w') as f:
        for case in non_executable_cases:
            f.write(json.dumps(case)+'\n')
def not_hit():
    
    return 0
if __name__=='__main__':
    # error_without_SQL()
    error_non_executable()
    # not_hit()