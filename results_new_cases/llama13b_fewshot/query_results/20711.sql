SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND FIND_IN_SET('Adventure', tb.genres) > 0
AND startYear > 2015
AND NOT FIND_IN_SET('Horror', tb.genres) > 0