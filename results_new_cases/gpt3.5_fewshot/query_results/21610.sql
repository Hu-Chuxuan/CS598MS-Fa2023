SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('War', tb.genres) > 0
AND startYear = 1998
AND tb.tconst != 'tt0120815'
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 5