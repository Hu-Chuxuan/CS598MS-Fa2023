SELECT DISTINCT t.* FROM titles AS t JOIN ratings AS r ON t.titleID = r.titleID WHERE t.category IN ('Comedy', 'Drama') AND ((r.averageRating > 7 OR r.numVotes >= 10)) ORDER BY r.rating DESC LIMIT 1