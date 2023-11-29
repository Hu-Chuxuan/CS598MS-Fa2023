SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('80s', tb.genres) > 0
AND startYear > 1980
AND startYear < 1990