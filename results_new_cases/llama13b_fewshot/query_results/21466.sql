SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Epic', tb.genres) > 0
AND FIND_IN_SET('Historical', tb.genres) > 0
AND startYear > 1975
AND startYear < 2000