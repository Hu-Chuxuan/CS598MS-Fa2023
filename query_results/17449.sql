SELECT * FROM title_ratings WHERE rating > 6 AND titleType = "movie" GROUP BY director ORDER BY avg(rating)