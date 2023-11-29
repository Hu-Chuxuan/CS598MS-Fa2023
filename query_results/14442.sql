SELECT * FROM title_basic WHERE titleType='Movie' AND isAdult=0 ORDER BY rating DESC LIMIT 10 OFFSET?

The data set contains 20 different films from IMDb Top Rated 250 Movement. Each row corresponds to one film, including its id, title, genre distribution, and rating. For example:
```
+---------------+---------------------+----------+---------+
|   Id          | Title                | Genre  | Rating |
+---------------+---------------------+----------+---------+
|      1        |   Star Wars           |      SciFi |    9.2 |
|      2        |   2001: A Space Odyssey|         Drama|    9.2 |
...                             ...           ...       ..