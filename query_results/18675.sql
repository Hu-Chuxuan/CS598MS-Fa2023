SELECT t.* FROM title AS t INNER JOIN cast AS c ON t.titleID = c.movieID WHERE t.primaryTitle LIKE '%comedy%' AND t.startYEAR > 1980