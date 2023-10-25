SELECT movies.* FROM titles AS t JOIN ratings AS r ON t.titleID = r.movieId WHERE rating >= 6 AND genre IN ('Comedy') ORDER BY rating DESC LIMIT 3