SELECT DISTINCT TOP(6) t.titleID FROM titles AS t INNER JOIN rating AS r ON t.titleID = r.movieID WHERE t.primaryGenre LIKE '%action%' AND r.rating >.7