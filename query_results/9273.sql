SELECT t.* FROM title AS t JOIN genre g ON t.genreId = g.id WHERE t.titleType IN ('Drama') AND NOT EXISTS( SELECT * FROM title_ratings r WHERE r.titleId = t.id ) GROUP BY t.movieId HAVING COUNT(*) > 0 ORDER BY SUM((CASE WHEN rating < 6 THEN 1 ELSE 0 END)) DESC LIMIT 1