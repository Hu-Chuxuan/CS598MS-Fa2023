from pyspark.sql import SparkSession
import json
import glob
from tqdm import tqdm
import numpy as np
from pyspark.sql.utils import AnalysisException
from pyspark.sql import SparkSession
from py4j.java_gateway import java_import, JavaObject



spark = SparkSession.builder \
    .appName("Running SQL Queries for IMDb") \
    .config("spark.driver.memory", "50g") \
    .config("spark.executor.memory", "50g") \
    .getOrCreate()
    
java_import(spark._jvm, "java.lang.OutOfMemoryError")
    
df1 = spark.read.csv("IMDB/ImdbName.csv", header = True)
df1.createOrReplaceTempView("name_basics") # Table name

df2 = spark.read.csv("IMDB/ImdbTitleBasics.csv", header = True)
df2.createOrReplaceTempView("title_basics")

df3 = spark.read.csv("IMDB/ImdbTitleCrew.csv", header = True)
df3.createOrReplaceTempView("title_crew")

df4 = spark.read.csv("IMDB/ImdbTitlePrincipals.csv", header = True)
df4.createOrReplaceTempView("title_principals")

df5 = spark.read.csv("IMDB/ImdbTitleRatings.csv", header = True)
df5.createOrReplaceTempView("title_ratings")

output_dir = './results/gpt3.5'

with open(f'./{output_dir}/predicted_results.jsonl', 'r') as json_file:
    json_list = [json.loads(line) for line in json_file]

ground_truth_dict = {}
for json_obj in json_list:
    ground_truth_dict[json_obj['id']] = json_obj['groundtruth']
    
cnt_executable = 0
cnt_total = 0
cnt_AnalysisException = 0
cnt_otherError = 0
cnt_timeout = 0
flag = 0
for filepath in tqdm(glob.iglob(f'./{output_dir}/query_results/*.sql')):
    cnt_total += 1
    print(cnt_total)
    
    try:
        with open(filepath) as sql_file:
            sql_query = sql_file.read()
        print(f"now executing {filepath}")
        result = spark.sql(sql_query).select("primaryTitle").rdd.flatMap(lambda x: x).collect()
        print(f"succed executing {filepath}")
        cnt_executable += 1
        filepath = filepath.replace('query_results', 'execution_results').replace('sql', 'json')
        with open(filepath, 'w') as f:
            f.write(json.dumps(result))     
    except AnalysisException as e:
        print(f"failed executing {filepath}")
        cnt_AnalysisException += 1
        pass
    except Exception as e:
        cnt_otherError += 1
        # Check if the exception is a Java exception (e.g., OutOfMemoryError)
        if "java" in str(e).lower():
            print("Java Exception:", e)
            # Handle the Java exception as needed
        else:
            # Handle other exceptions
            print("Other Exception:", e)
print(cnt_executable, cnt_total, cnt_otherError, cnt_AnalysisException)