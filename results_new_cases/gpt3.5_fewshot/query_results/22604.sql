SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND (startYear = 1997 OR startYear = 1977 OR startYear = 2015 OR startYear = 1985 OR startYear = 1989)