SELECT DISTINCT tc.* FROM imdb_title AS tc JOIN imdb_name ON imdb_movie.primaryName = imdb_name.primaryName WHERE imdb_movie.startYear BETWEEN? AND? GROUP BY imdb_movie.genre ORDER BY rating DESC LIMIT 10