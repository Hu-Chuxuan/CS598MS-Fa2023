SELECT * FROM titles WHERE titleType = "movie" AND (isAdult <> true OR genre LIKE '%Action%') ORDER BY rating DESC LIMIT 10