SELECT t.* FROM title_ratings AS t WHERE ((title_type = "movie") AND (average_rating >= :minimum_rating)) ORDER BY average_rating DESC LIMIT 10