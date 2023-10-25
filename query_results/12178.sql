SELECT DISTINCT t.* FROM title AS t INNER JOIN title_ratings r ON t.titleID = r.tconst WHERE r.numVotes > 1 AND r.averageRating >= 8