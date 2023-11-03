SELECT t.* FROM title AS t INNER JOIN title_rating AS r ON t.titleID = r.movieID WHERE t.primaryTitle LIKE '%grudge%' AND t.averageRating > 7 ORDER BY r.numVotes DESC LIMIT 5