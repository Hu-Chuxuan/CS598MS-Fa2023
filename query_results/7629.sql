SELECT t.* FROM movies AS m INNER JOIN casts AS c ON m.movieID = c.movieID AND m.titleType = “Actor” WHERE c.character LIKE ‘Jim Carrey’