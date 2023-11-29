SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Time-Travel', tb.genres) > 0
AND startYear < 2015
AND startYear > 1975