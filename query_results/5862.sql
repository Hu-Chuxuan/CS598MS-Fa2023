SELECT t.* FROM titles AS t INNER JOIN casts ON t.titleID = casts.movieID AND actors IN ('Owen Wilson', 'Jeremy Piven') WHERE categories LIKE '%comedy%' GROUP BY actors ORDER BY rating DESC LIMIT 6