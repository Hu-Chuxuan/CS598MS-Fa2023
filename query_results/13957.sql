SELECT * FROM movies WHERE user_preferences LIKE '%action%' AND title_type ='movie' ORDER BY avg(rating)