SELECT * FROM title_ratings WHERE rating > 6 AND titleType = "movie" ORDER BY AVG(rating)