SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Romance', tb.genres) > 0
ORDER BY tb.averageRating DESC, tb.numVotes DESC