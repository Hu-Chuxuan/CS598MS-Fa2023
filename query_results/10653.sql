SELECT t.* FROM movies AS m INNER JOIN casts AS c ON m.titleID = c.movieID AND c.actors LIKE '%Julia Roberts%' OR actors LIKE '%Richard Gere%'