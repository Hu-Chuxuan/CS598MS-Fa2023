SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
OR FIND_IN_SET('Thriller', tb.genres) > 0
OR FIND_IN_SET('Crime', tb.genres) > 0
OR FIND_IN_SET('Mystery', tb.genres) > 0
OR FIND_IN_SET('Sci-Fi', tb.genres) > 0
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 1