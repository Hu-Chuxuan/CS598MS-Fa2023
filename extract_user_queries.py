import pandas as pd
import re
from transformers import pipeline
import json
from tqdm import tqdm
TEMPLATE = """
[INST] <<SYS>>
Your task
<</SYS>>
{prompt}[/INST]

"""

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
    
    raw_output = pipe(prompt)
    response = get_response_text(raw_output, "SQL Query:\n")
    # print(response)
    # assert 1==0
    return response


if __name__=='__main__':
    data = []
    with open("processed_data.jsonl", 'r') as f:
        for line in f.readlines():
            data.append(json.loads(line))
            
    output_dir = './results/llama7b/'
    
    

    pipe = pipeline("text-generation", model="/home/qiusi/code/model/Llama-2-7b-chat-hf", max_new_tokens=512, device=0)
    
    with open("predicted_results_np.jsonl", 'w') as f:
        for item in tqdm(data):
            results = predict(item['query'], item['history'], pipe)
            item['output'] = results
            f.write(json.dumps(item) + '\n')
    
    
    
    
    
    

