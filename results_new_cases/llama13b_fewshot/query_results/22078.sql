SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND FIND_IN_SET('Romance', tb.genres) > 0
AND FIND_IN_SET('Crime', tb.genres) > 0
AND startYear > 1980
AND startYear < 2015
AND NOT (tb.isAdult = 1)