import pandas as pd
import re
from transformers import pipeline
import json
from tqdm import tqdm
from utils import SYS_MESSAGE, USER_INPUT

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
    prompt = USER_INPUT.format(user_query = query, user_history = history)
    prompt = f"""[INST] <<SYS>>
{SYS_MESSAGE}
<</SYS>>
{prompt}[/INST]"""
    
    print("*"*10)
    print(prompt)
    for i in range(5):
        raw_output = pipe(prompt)
        response = get_response_text(raw_output, "[/INST]")
        print("*"*10)
        print(response)
    return response


if __name__=='__main__':
    data = []
    with open("processed_data.jsonl", 'r') as f:
        for line in f.readlines():
            data.append(json.loads(line))
            
            
    output_dir = './results/llama70b'
    output_file = f"{output_dir}/predicted_results.jsonl"
    
    pipe = pipeline("text-generation", model="/home/qiusi/code/model/Llama-2-70B-chat-GPTQ", max_new_tokens=512, device_map='cuda')
    
    output_data = []
    for item in tqdm(data[:2]):
        results = predict(item['query'], item['history'], pipe)
        print(results)
        item['output'] = results
        output_data.append(item)
    
    with open(output_file, 'w') as f:
        for item in output_data:
            f.write(json.dumps(item) + '\n')
    
    
    
    
    
    

