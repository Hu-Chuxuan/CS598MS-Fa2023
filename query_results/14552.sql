SELECT t.* FROM movies as m INNER JOIN casts c ON m.imdbId = c.movieId WHERE m.genre IN ('Action','Adventure') AND m.startYear BETWEEN 2019-06-01 AND 2019-12-01