SELECT t.* FROM title_basics AS t INNER JOIN title_ratings AS r ON t.titleId = r.titleID WHERE r.averageRating >= '7' AND r.numVotes > 0