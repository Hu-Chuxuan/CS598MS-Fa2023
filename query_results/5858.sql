SELECT movies.* FROM imdbmovies AS movies INNER JOIN imdbusers AS user ON movies.titleId = user.movieId WHERE genre IS NULL AND genre LIKE '%comedy%' ORDER BY rating DESC LIMIT 3