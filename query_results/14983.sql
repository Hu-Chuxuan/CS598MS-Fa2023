SELECT t.* FROM movies AS m JOIN casts AS c ON m.id = c.movieID WHERE c.primaryRole = "Cast" AND m.titleType="Feature Film"