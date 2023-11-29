SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Animation', tb.genres) > 0 OR FIND_IN_SET('Adventure', tb.genres) > 0)
AND startYear > 2000
AND isAdult = 0
AND tb.tconst NOT IN ('tt1453405', 'tt0317219', 'tt0379786', 'tt0319148')