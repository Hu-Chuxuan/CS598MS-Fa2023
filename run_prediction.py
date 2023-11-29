import pandas as pd
import re
from transformers import pipeline
import json
from tqdm import tqdm
from utils import TEMPLATE_CHAT_BASE, TEMPLATE_CHAT_DETAILED, TEMPLATE_CHAT_FEWSHOT

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

def predict(query, history, pipe, template):
    prompt = template.format(user_query = query, user_history = history)
    # print("*"*10)
    # print(prompt)
    
    raw_output = pipe(prompt)
    response = get_response_text(raw_output, "[/INST]\n")
    # print(response)
    # assert 1==0
    return response


if __name__=='__main__':
    device = 2
    prompt_mode = "fewshot"
    model = "llama13b"
    base_dir = "results_new_cases"
    data_path = "./data/processed_data_test_filtered.jsonl"
    output_name = "predicted_results_test_filtered.jsonl"
    
    data = []
    with open(data_path, 'r') as f:
        for line in f.readlines():
            data.append(json.loads(line))
            
    output_dir = f'./{base_dir}/{model}_{prompt_mode}'
    output_file = f"{output_dir}/{output_name}"
    
    

    pipe = pipeline("text-generation", model="/home/qiusi/code/model/Llama-2-13b-chat-hf", max_new_tokens=512, device=device)
    
    template = {
        "base": TEMPLATE_CHAT_BASE, 
        "detailed": TEMPLATE_CHAT_DETAILED, 
        "fewshot": TEMPLATE_CHAT_FEWSHOT
    }[prompt_mode]
    
    with open(output_file, 'w') as f:
        for item in tqdm(data):
            results = predict(item['query'], item['history'], pipe, template)
            item['output'] = results
            f.write(json.dumps(item) + '\n')
    
    
    
    
    
    

