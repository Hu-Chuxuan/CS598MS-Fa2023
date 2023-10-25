SELECT * FROM title WHERE titleType = "movie" AND
(titleType NOT IN ('TV Series', 'Short Film')) OR
(directors LIKE '%Jonathan%') OR
genreID IN (8967)