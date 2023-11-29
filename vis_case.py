import json

output_dir = './results/gpt3.5'
case_ids = [624, 19713, 21666, 17179, 8573, 7036, 12162, 13093, 6090, 19440, 18810, 5921, 6283, 1375, 19664, 14730, 6254, 6418, 11981, 9362, 6032, 14558, 959, 18701, 5727, 20493]
cases = []
with open(f"{output_dir}/all_results.jsonl", 'r') as f:
    for line in f.readlines():
        tmp = json.loads(line)
        if tmp['id'] in case_ids:
            if len(tmp["execution_result"]) > 10:
                tmp["execution_result"] = tmp["execution_result"][:10] + [f"...({len(tmp['execution_result'])} in total)"]
            cases.append(tmp)

with open(f"{output_dir}/hit_cases.json", 'w') as f:
    f.write(json.dumps(cases, indent=True))

