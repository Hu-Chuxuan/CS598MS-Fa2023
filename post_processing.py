import json
import sqlparse
from tqdm import tqdm
data = []
with open('./predicted_results.jsonl', 'r') as f:
    for line in f.readlines():
        data.append(json.loads(line))

for item in tqdm(data):
    if 'SELECT' in item['output'] and ';' in item['output']:
        print('*'*10)
        start = item['output'].index('SELECT')
        end = item['output'].index(';')
        statement = item['output'][start:end]
        if len(statement):
            try:
                parsed = sqlparse.parse(statement)
                if parsed:
                    with open(f'./query_results/{item["id"]}.sql', "w") as sql_file:
                        sql_file.write(statement)
                    # print(statement)
            except Exception as e:
                pass
