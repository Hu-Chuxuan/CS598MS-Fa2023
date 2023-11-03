SELECT DISTINCT t.titleId AS MovieID, c.character AS Character, p.job As Job, r.rating AS Rating FROM Title t JOIN Casting c ON t.movieId = c.movieId AND t.isAdult <> true AND ((c.character = "LeBron James" OR c.character LIKE "%Le%") AND NOT EXISTS(SELECT * FROM Title WHERE rating > 7)) UNION ALL SELECT DISTINCT t.titleId AS MovieID, c.character AS Character, p.job As Job, r.rating AS Rating FROM Title t JOIN Casting c ON t.movieId = c.movieId AND t.isAdult = false AND ((c.character = "Shaquille O'Neal" OR c.character LIKE "%Sh...") AND NOT EXISTS(SELECT * FROM Title WHERE rating < 8)) GROUP BY MovieID HAVING COUNT(*) >= 1