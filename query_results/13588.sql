SELECT * FROM title_ratings t WHERE (((((t.averageRating >= 7 AND t.numVotes > 1)) OR (t.averageRating <= 9))) AND t.titleType = "movie") ORDER BY t.averageRating DESC LIMIT 2