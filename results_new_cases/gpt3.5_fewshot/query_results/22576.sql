SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND tb.startYear > 1990
AND tb.numVotes > 100000