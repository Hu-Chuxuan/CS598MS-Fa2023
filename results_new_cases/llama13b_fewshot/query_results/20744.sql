SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Thriller', tb.genres) > 0
AND startYear > 2010
AND (SELECT AVG(rating) FROM title_ratings WHERE tconst = tb.primaryTitle AND numVotes > 1000) > 6
AND NOT EXISTS (SELECT 1 FROM title_basics tb2 WHERE tb2.primaryTitle = tb.primaryTitle AND tb2.startYear < 2010)