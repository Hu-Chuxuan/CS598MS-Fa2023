import pandas as pd
import re
from transformers import pipeline
import json
from tqdm import tqdm
import pickle as pkl
from tqdm import tqdm
from retry import retry
import openai
SYS_MESSAGE = """When a user provides a sentence, your task is to determine if it is a request for a movie recommendation. Respond with "YES" if the sentence is a specific request for movie suggestions, such as "I want to see some comedies." Respond with "NO" if the sentence is not related to movie recommendations or if it is a general inquiry about movies, like "Hello" or "I am open to any movie."
"""
movies_with_mentions = pd.read_csv('./movies_with_mentions.csv')
id2movie = {movies_with_mentions["movieId"][i]:movies_with_mentions["movieName"][i] for i in range(len(movies_with_mentions))}
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

@retry(tries=5, delay=2)
def ChatCompletion_with_backoff(**kwargs):
    return openai.ChatCompletion.create(**kwargs)

def is_query(line):
    messages = [
        {"role": "system", "content": SYS_MESSAGE},
        {"role": "user", "content": line}
    ]
    try:
        print(line)
        response = ChatCompletion_with_backoff(
            model="gpt-3.5-turbo-1106",
            messages=messages,
            # response_format={"type":"json_object"}
        )
        response = response.choices[0].message['content']
        print(response)
        if "YES" in response:
            return True
        return False
    except openai.error.APIError as e:
        print(f"API call failed after several retries: {e}")
        return False


if __name__=='__main__':
    
    with open('./query_train.pkl', 'rb') as file:
        # Load the data from the file
        data = pkl.load(file)
    
    with open("./user_queries_train.txt", 'w') as f:   
        for case in tqdm(data):
            user_query = ""
            for line in case:
                line = map_query(line, id2movie)
                if is_query(line):
                    user_query = line
                if user_query != "":
                    break
            f.write(user_query+'\n')
    
        
    
    
    
    
    
    

