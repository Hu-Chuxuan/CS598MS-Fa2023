SELECT * FROM (title_ratings) WHERE rating >= '7' AND genre = "Horror" ORDER BY AVG(rating)