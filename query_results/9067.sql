SELECT t.* FROM movies AS m JOIN titles AS t ON m.titleId = t.id WHERE m.userId=? AND m.genre LIKE'sci-fi' ORDER BY avg(m.rating)