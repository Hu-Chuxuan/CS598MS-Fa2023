SELECT t1.* FROM movies AS t1 INNER JOIN rating AS t2 ON t1.titleId = t2.movieId AND t2.rating > 8 WHERE t1.primaryProfession LIKE '%actor%' OR t1.director LIKE '%actor%'