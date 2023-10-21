import pandas as pd
import re
from transformers import pipeline

TEMPLATE = """
Create an SQL query for a movie recommendation system that operates on the IMDb database. The database comprises several tables with the following columns:
1. title_basics [tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres]
2. title_ratings [tconst, averageRating, numVotes]
3. name_basics [nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles]
4. title_crew [tconst, directors, writers]
5. title_principals [tconst, ordering, nconst, category, job, characters]
As a movie recommender system, your task is to generate SQL queries that can be executed on this database. These queries should provide movie recommendations to users based on their query and historical preferences. Please design SQL queries that can retrieve movies the user might like, considering their preferences and past interactions with the system.

User Query: 
{user_query}
User Preference History: 
{user_history}
SQL Query:
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
    print(prompt)
    raw_output = pipe(prompt)
    response = get_response_text(raw_output, "SQL Query:\n")
    print(response)
    return response


if __name__=='__main__':
    movies_with_mentions = pd.read_csv('./movies_with_mentions.csv')
    # print(movies_with_mentions, len(movies_with_mentions))
    id2movie = {movies_with_mentions["movieId"][i]:movies_with_mentions["movieName"][i] for i in range(len(movies_with_mentions))}
    # print(id2movie)
    # assert 12==0
    print(id2movie[111776])
    
    conv_id = 20001
    query = "Hi I am looking for a movie like @111776"
    history = ['111776', '134643', '192131']
    groundtruth = ['@124771']
    
    
    query = map_query(query, id2movie)
    history = [id2movie[int(id)] for id in history]
    groundtruth = [id2movie[int(id[1:])] for id in groundtruth]
    
    
    pipe = pipeline("text-generation", model="/projects/illinois/eng/cs/ddkang/qiusiz2/Llama-2-7b-hf", max_new_tokens=512, device=0)
    results = predict(query, history, pipe)
    print(query, history, groundtruth)

