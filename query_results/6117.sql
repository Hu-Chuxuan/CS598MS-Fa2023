SELECT t1.* FROM imdb_movies AS t1 WHERE t1.`titleType` ='movie' AND ((t1.`primaryTitle` LIKE '%Lord%') OR (t1.`originalTitle` LIKE '%Lord%' OR t1.`startYear` BETWEEN 1978 AND 1986)) ORDER BY t1.`averageRating` DESC LIMIT 1