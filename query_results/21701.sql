SELECT * FROM TITLE_BASICS WHERE titleType ='movie' AND rating >= AVERAGE(rating) OVER () ORDER BY avg_rating DESC LIMIT 1