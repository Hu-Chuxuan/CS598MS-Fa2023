SELECT movies.* FROM
(SELECT * FROM title_ratings WHERE rating >= 7 AND numVotes > 0 ORDER BY avgRating DESC LIMIT 10)