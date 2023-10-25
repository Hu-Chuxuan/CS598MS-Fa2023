SELECT * FROM (
    SELECT t.title AS MovieID, r.* FROM titles as t LEFT JOIN ratings as r ON t.primaryTitle = r.movieId WHERE t.isAdult=0 AND ((r.averageRating > 7)) ORDER BY r.numVotes DESC LIMIT 6