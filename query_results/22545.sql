SELECT t1.* FROM imdb.title AS t1 JOIN imdb.name AS t2 ON t1.primaryName = t2.nconst WHERE t2.category='Actor' AND t1.job IN ('Director','Writer') GROUP BY t1.id ORDER BY t1.rating DESC LIMIT 1