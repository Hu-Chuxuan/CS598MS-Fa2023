import json
import sqlparse
from tqdm import tqdm
import re
def parser_statement(statement):
    if len(statement):
        try:
            parsed = sqlparse.parse(statement)
            if parsed:
                return statement
        except Exception as e:
            return None
    return None
    
def extract_SQL(item):
    output = item['output']
    output = output.replace('select', 'SELECT').replace('Select', 'SELECT')
    if 'SELECT' in output and ';' in output:
        # print('*'*10)
        start = output.index('SELECT')
        end = output.index(';')
        statement = parser_statement(output[start:end])
    elif output.startswith('SELECT') and '.\n' in output:
        end = output.index('.\n')
        statement = parser_statement(output[:end])
    elif output.startswith('SELECT') and '\n\n' in output:
        end = output.index('\n\n')
        statement = parser_statement(output[:end])
    elif output.startswith('SELECT') and '\n```' in output:
        end = output.index('\n```')
        statement = parser_statement(output[:end])
    elif output.startswith('SELECT') and '\n```' in output:
        end = output.index('\n```')
        statement = parser_statement(output[:end])
    elif output.startswith('```sql\n'):
        if output.endswith('\n```'):
            statement = parser_statement(output[7:-4])
        else:
            statement = None
            
    elif output.startswith('SELECT') and '\n' not in output:
        statement = parser_statement(output)
    # elif output.startswith
    else:
        # Regex pattern to match SQL queries inside double quotes
        # pattern = r'"(SELECT .*?)"'

        # # Find all matches in the text
        # sql_queries = re.findall(pattern, output, re.DOTALL)
        # print("*"*10)
        # print(output)
        # print(sql_queries)
        return None
    return statement

if __name__ == "__main__":
    # print(parser_statement("SELECT * FROM movie WHERE titleType ='movie' AND titleType IS NOT NULL ORDER BY averageRating DESC LIMIT?"))
    # assert 1==0
    model = "llama13b"
    mode = "fewshot"
    output_dir = f'results_new_cases/{model}_{mode}'
    result_file = f"./results_new_cases/{model}_{mode}/predicted_results_test_filtered.jsonl"
    
    data = []
    with open(result_file, 'r') as f:
        for line in f.readlines():
            data.append(json.loads(line))

    cnt = 0
    for item in tqdm(data):
        if 'select' not in item['output'].lower():
            continue
        statement = extract_SQL(item)
        if statement is not None:
            cnt += 1
            with open(f'./{output_dir}/query_results/{item["id"]}.sql', "w") as sql_file:
                sql_file.write(statement)
        # else:
            # print("*"*10)
            # print(item)
    print(f" # queries: {cnt}/{len(data)}")
    
