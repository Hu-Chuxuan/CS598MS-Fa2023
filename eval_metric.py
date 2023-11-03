import os
import json

with open('./predicted_results.jsonl', 'r') as json_file:
    json_list = [json.loads(line) for line in json_file]

ground_truth_dict = {}
for json_obj in json_list:
    ground_truth_dict[json_obj['id']] = json_obj['groundtruth']

result_dir = './execution_results/'
cnt_total = 0
cnt_hit = 0
cnt_zero = 0
n_item_list = []
for file in os.listdir(result_dir):
    file_path = os.path.join(result_dir, file)
    print(file_path)
    cnt_total += 1
    file_id = int(file[:-5])
    results = json.load(open(file_path, 'r'))
    if len(results):
        cnt_zero += 1
    ground_truth = ground_truth_dict[file_id]
    for i in ground_truth:
        i = i.split('(')[0].strip()
        # print(i)
        if i in results:
            cnt_hit += 1
            n_item_list.append(len(results))
            break
print(f"total: {cnt_total}, hit cases:{cnt_hit}, hit ratio: {cnt_hit/cnt_total}, zero results: {cnt_zero},zero ratio: {cnt_zero/cnt_total},  average_item_num:{sum(n_item_list)/len(n_item_list)}; min_item_num:{min(n_item_list)};max_item_num:{max(n_item_list)}")