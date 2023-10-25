SELECT DISTINCT t.* FROM title_basics AS t JOIN title_rating AS r ON t.titleID = r.movieID WHERE r.averageRating >.7 AND ((r.numVotes >= 80 OR r.numVotes IS NULL)) GROUP BY t.primaryTitle ORDER BY RAND() LIMIT 6