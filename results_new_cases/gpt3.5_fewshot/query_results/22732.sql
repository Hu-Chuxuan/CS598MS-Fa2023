SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('War', tb.genres) = 0
AND (startYear = 1980 OR startYear = 2015 OR startYear = 2012)