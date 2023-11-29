import pandas as pd
import json

movies_with_mentions = pd.read_csv('./data/movies_with_mentions.csv')
    
id2movie = {movies_with_mentions["movieId"][i]:movies_with_mentions["movieName"][i] for i in range(len(movies_with_mentions))}

cases = pd.read_csv('./data/case_test.csv')
with open("./data/user_queries_test.txt", 'r') as f:
    queries = f.readlines()

processed_data = []
for conv_id, _, history, groundtruth, query in zip(cases['conv_id'], cases['query'], cases['history'], cases['groundtruth'], queries):
    history = eval(history)
    groundtruth = eval(groundtruth)
    
    if len(groundtruth) == 0:
        continue
    query = query[:-1]
    if query == '':
        continue
    
    history = [id2movie[int(movie)] for movie in history]

    groundtruth = [id2movie[int(movie)] for movie in groundtruth]
    processed_data.append({
        "id": conv_id,
        "query": query,
        "history": history,
        "groundtruth": groundtruth
    })

with open("./data/processed_data_test.jsonl", 'w') as f:
    for item in processed_data:
        f.write(json.dumps(item) + '\n')
print(len(processed_data))