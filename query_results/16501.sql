SELECT * FROM movies WHERE
movie_genres LIKE '%action%' AND
movies.startyear <= '2009' AND
movies.endyear >= '1975'