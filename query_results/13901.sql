SELECT t.* FROM movies AS m INNER JOIN cast AS c ON m.id = c.movieId AND c.actorId IN ('Clive Owen')