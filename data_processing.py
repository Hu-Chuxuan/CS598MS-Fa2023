import pandas as pd
import re
import json

def map_query(query, id2movie):
    pattern = r'@(\d+)'

    # Define a function to replace based on the dictionary
    def replace_movie(match):
        id = match.group(1)  # Get the ID from the match
        return id2movie.get(int(id), f"@{id}")  # Replace with movie name or original if not found

    # Use re.sub with the function to perform the replacements
    new_query = re.sub(pattern, replace_movie, query)
    return new_query
movies_with_mentions = pd.read_csv('./movies_with_mentions.csv')
    
# print(movies_with_mentions, len(movies_with_mentions))
id2movie = {movies_with_mentions["movieId"][i]:movies_with_mentions["movieName"][i] for i in range(len(movies_with_mentions))}

test_case = pd.read_csv('./case_test.csv')
train_case = pd.read_csv('./case_train.csv')
all_case = pd.concat([test_case, train_case])

# pipe = pipeline("text-generation", model="/home/qiusi/code/model/Llama-2-7b-hf", max_new_tokens=512, device=0)
processed_data = []
for conv_id, query, history, groundtruth in zip(all_case['conv_id'], all_case['query'], all_case['history'], all_case['groundtruth']):
    history = eval(history)
    groundtruth = eval(groundtruth)
    
    if len(groundtruth) == 0:
        continue
    query = map_query(query, id2movie)
    history = [id2movie[int(movie)] for movie in history]
    groundtruth = [id2movie[int(movie)] for movie in groundtruth]
    processed_data.append({
        "id": conv_id,
        "query": query,
        "history": history,
        "groundtruth": groundtruth
    })

with open("processed_data.jsonl", 'w') as f:
    for item in processed_data:
        f.write(json.dumps(item) + '\n')
    