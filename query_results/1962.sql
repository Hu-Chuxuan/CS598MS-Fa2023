SELECT DISTINCT t.* FROM titles AS t INNER JOIN cast AS c ON t.titleId = c.movieId AND c.job = "actor" WHERE t.primaryTitle LIKE '%fun%' OR t.originalTitle LIKE '%fun%' ORDER BY c.ordering DESC LIMIT 5