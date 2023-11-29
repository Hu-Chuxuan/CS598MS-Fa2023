SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Action', tb.genres) > 0 OR FIND_IN_SET('Thriller', tb.genres) > 0)
AND (startYear = 1987 OR startYear = 2011)