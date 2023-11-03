SELECT DISTINCT t.* FROM titles AS t JOIN ratings ON r.titleID = t.imdbID WHERE r.rating > '6' AND (r.genre LIKE '%Action%' OR r.genre LIKE '%Comedy%') ORDER BY rating DESC LIMIT 10