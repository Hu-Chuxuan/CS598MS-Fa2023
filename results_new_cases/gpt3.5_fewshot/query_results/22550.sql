SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Animation', tb.genres) > 0
AND startYear > 2010