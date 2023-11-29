import json
from tqdm import tqdm
from run_prediction import TEMPLATE
from post_processing import extract_SQL
import os
# from eval_metric import get_ground_truth_dict
def gather_all_results(data_dir):
    data = []
    with open(f"{data_dir}/predicted_results.jsonl", 'r') as f:
        for line in f.readlines():
            data.append(json.loads(line))
          
    id2SQL = {}  
    for file in os.listdir(f'{data_dir}/query_results/'):
        query_id = int(file.split('.')[0])
        file_path = os.path.join(f'{data_dir}/query_results/', file)
        with open(file_path, 'r') as f:
            id2SQL[query_id] = f.read()
    
    id2result = {}
    for file in os.listdir(f'{data_dir}/execution_results/'):
        query_id = int(file.split('.')[0])
        file_path = os.path.join(f'{data_dir}/execution_results/', file)
        with open(file_path, 'r') as f:
            id2result[query_id] = f.read()
    
    with open(f'{data_dir}/all_results.jsonl', 'w') as f:    
        for item in data:
            prompt = TEMPLATE.format(user_query = item['query'], user_history = item['history'])
            item['input_prompt'] = prompt
            if item['id'] in id2SQL:
                item['extracted_SQL'] = id2SQL[item['id']]
            if item['id'] in id2result:
                item['execution_result'] = json.loads(id2result[item['id']])
            f.write(json.dumps(item) + '\n')
    
        

    
def error_without_SQL(data_dir):
    data = []
    with open(f"./{data_dir}/predicted_results.jsonl", 'r') as f:
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
    data = []
    with open('./all_results.jsonl', 'r') as f:
        for line in f.readlines():
            # print(line)
            data.append(json.loads(line))

    no_hit_cases = []
    cnt = 0
    for item in data:
        if 'execution_result' not in item:
            continue
        results = item['execution_result']
        if not len(results):
            no_hit_cases.append(item)
            continue
        ground_truth = item['groundtruth']
        for i in ground_truth:
            i = i.split('(')[0].strip()
            if i in results:
                cnt += 1
                break
        else:
            if len(item['execution_result']) >=100:
                item['execution_result'] = 'too long'
            no_hit_cases.append(item)
    print(cnt)
    print(len(no_hit_cases))
    with open('./error_cases/no_hit.jsonl', 'w') as f:
        for item in no_hit_cases:
            f.write(json.dumps(item) + '\n')
    return 0
if __name__=='__main__':
    error_without_SQL('./results/gpt3.5')
    # error_non_executable()
    # not_hit()
    # gather_all_results('./results/gpt3.5')