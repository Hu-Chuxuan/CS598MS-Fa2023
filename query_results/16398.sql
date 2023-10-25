SELECT * FROM imdb_movie
WHERE rating >= 6 AND genre IN ('Drama','Comedy') ORDER BY rating DESC