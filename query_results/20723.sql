SELECT tc.* FROM movies AS m INNER JOIN casts AS c ON m.id = c.movieId AND c.actorId IN ('Tom Hanks')