SELECT t.* FROM title AS t JOIN name_basics AS n ON t.titleId = n.primaryMovieId WHERE t.category LIKE '%horror%' AND (t.averageRating > 6 OR t.numVotes >= 8)