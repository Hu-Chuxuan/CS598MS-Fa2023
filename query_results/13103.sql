SELECT t.* FROM title_ratings r JOIN title_basic b ON r.titleId = b.id WHERE r.averageRating > 6 AND r.numVotes >= 8