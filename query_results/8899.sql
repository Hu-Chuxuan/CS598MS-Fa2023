SELECT t.* FROM title_basics AS t JOIN
( SELECT rating, count(*) as cnt FROM title_ratings WHERE userId = "1" GROUP BY rating ) AS r ON t.title_id=r.rating AND t.userId="1"