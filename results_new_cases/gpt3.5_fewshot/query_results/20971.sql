SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear < 1974
AND tb.tconst NOT IN ('tt0072271')