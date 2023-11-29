SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Action', tb.genres) > 0 OR FIND_IN_SET('Romance', tb.genres) > 0)
AND startYear > 1980
AND startYear < 1996