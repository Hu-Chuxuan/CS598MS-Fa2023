SELECT t.* FROM movies AS m JOIN casts AS c ON c.movieID = m.id WHERE c.character LIKE '%Jason%' AND genre='Horror' ORDER BY rating DESC LIMIT 3