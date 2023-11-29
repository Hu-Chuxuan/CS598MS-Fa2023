import pandas as pd
import re
from transformers import pipeline
import json
from tqdm import tqdm
from utils import SYS_MESSAGE_BASE, SYS_MESSAGE_DETAILED, SYS_MESSAGE_FEWSHOT, USER_INPUT
import openai
from retry import retry


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

def predict(query, history, sys_message):
    messages = [
        {"role": "system", "content": sys_message},
        {"role": "user", "content": USER_INPUT.format(user_query = query, user_history = history)}
    ]
    # print(messages)
    # assert 1==0
    try:
        response = ChatCompletion_with_backoff(
            model="gpt-3.5-turbo-1106",
            messages=messages,
            # response_format={"type":"json_object"}
        )
        response_message = response.choices[0].message
        return response_message["content"]
    except openai.error.APIError as e:
        print(f"API call failed after several retries: {e}")
    return ""


if __name__=='__main__':
    model = "gpt3.5"
    prompt_mode = "base"
    base_dir = "results_new_cases"
    data_path = "./data/processed_data_test_filtered.jsonl"
    output_name = "predicted_results_test_filtered.jsonl"
    
    
    data = []
    with open(data_path, 'r') as f:
        for line in f.readlines():
            data.append(json.loads(line))
            
    output_dir = f'./{base_dir}/{model}_{prompt_mode}'
    output_file = f"{output_dir}/{output_name}"
    
    processed_items = set()
    try:
        with open(output_file, 'r') as f:
            for line in f:
                processed_item = json.loads(line.strip())
                processed_items.add(processed_item['id'])
    except FileNotFoundError:
        # If the file doesn't exist, we start from scratch
        print("Output file not found. Starting from the beginning.")

    sys_message = {
        "base": SYS_MESSAGE_BASE,
        "detailed": SYS_MESSAGE_DETAILED,
        "fewshot": SYS_MESSAGE_FEWSHOT
    }[prompt_mode]
    with open(output_file, 'a') as f:
        for item in tqdm(data):
            if item['id'] in processed_items:
                continue
            results = predict(item['query'], item['history'], sys_message)
            if results == "":
                print(item["id"])
            item['output'] = results
            f.write(json.dumps(item) + '\n')
    
    
    
    
    
    

