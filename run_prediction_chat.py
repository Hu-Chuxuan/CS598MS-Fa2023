import pandas as pd
import re
from transformers import pipeline
import json
from tqdm import tqdm
TEMPLATE = """
### HUMAN:\n
Create an SQL query for a movie recommendation system that operates on the IMDb database. The database comprises several tables with the following columns:
1. TitleBasics [tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres]
2. TitleRatings [tconst, averageRating, numVotes]
3. Name [nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles]
4. TitleCrew [tconst, directors, writers]
5. TitlePrincipals [tconst, ordering, nconst, category, job, characters]
As a movie recommender system, your task is to generate a SQL query that can be executed on this database. This query should provide movie recommendations to users based on their input and historical preferences. Please design SQL query that can retrieve movies the user might like.

User Input: 
{user_query}
User Preference History: 
{user_history}
\n\n### RESPONSE:\nSure, here is a SQL query:\n
"""

def map_query(query, id2movie):
    pattern = r'@(\d+)'

    # Define a function to replace based on the dictionary
    def replace_movie(match):
        id = match.group(1)  # Get the ID from the match
        return id2movie.get(int(id), f"@{id}")  # Replace with movie name or original if not found

    # Use re.sub with the function to perform the replacements
    new_query = re.sub(pattern, replace_movie, query)
    return new_query

def get_response_text(data, anchor):
    text = data[0]["generated_text"]

    assistant_text_index = text.find(anchor)
    if assistant_text_index != -1:
        text = text[assistant_text_index+len(anchor):].strip()
        
    else:
        print(text)
        print(anchor)
        print("cannot find anchor")
    return text

def predict(query, history, pipe):
    prompt = TEMPLATE.format(user_query = query, user_history = history)
    # print("*"*10)
    # print(prompt)
    for i in range(5):
        raw_output = pipe(prompt)
        response = get_response_text(raw_output, "Sure, here is a SQL query:\n")
        # print("*"*10)
        # print(response)
    return response


if __name__=='__main__':
    data = []
    with open("processed_data.jsonl", 'r') as f:
        for line in f.readlines():
            data.append(json.loads(line))
    
    pipe = pipeline("text-generation", model="/home/qiusi/code/model/Llama-2-70B-chat-GPTQ", max_new_tokens=512, device=0)
    
    output_data = []
    for item in tqdm(data[:2]):
        results = predict(item['query'], item['history'], pipe)
        print(results)
        item['output'] = results
        output_data.append(item)
    
    with open("predicted_results.jsonl", 'w') as f:
        for item in output_data:
            f.write(json.dumps(item) + '\n')
    
        
    # print(data[0])
    assert 1==0
    
    movies_with_mentions = pd.read_csv('./movies_with_mentions.csv')
    
    # print(movies_with_mentions, len(movies_with_mentions))
    id2movie = {movies_with_mentions["movieId"][i]:movies_with_mentions["movieName"][i] for i in range(len(movies_with_mentions))}
    # print(id2movie)
    # assert 12==0

    test_case = pd.read_csv('./case_test.csv')
    train_case = pd.read_csv('./case_train.csv')
    all_case = pd.concat([test_case, train_case])
    
    # pipe = pipeline("text-generation", model="/home/qiusi/code/model/Llama-2-7b-hf", max_new_tokens=512, device=0)
    for conv_id, query, history, groundtruth in zip(all_case['conv_id'], all_case['query'], all_case['history'], all_case['groundtruth']):
        if len(groundtruth) == 0:
            continue
        query = map_query(query, id2movie)
        print(history)
        for movie in history:
            print(movie)
            print(int(movie))
        print(id2movie[111776])
        print(id2movie[134643])
        print(id2movie[192131])
        history = [id2movie[int(movie)] for movie in history]
        groundtruth = [id2movie[int(movie[1:])] for movie in groundtruth]
        
        # results = predict(query, history, pipe)
        # print(conv_id, query, history, groundtruth, results)
        assert 1==0
        
    # print(all_case.columns)
    # assert 1==0
    
    # conv_id = 20001
    # query = "Hi I am looking for a movie like @111776"
    # history = ['111776', '134643', '192131']
    # groundtruth = ['@124771']
    
    
    
    
    
    
    

