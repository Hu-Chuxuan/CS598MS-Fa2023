SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Animation', tb.genres) > 0
AND FIND_IN_SET('Fantasy', tb.genres) > 0
AND startYear < 1991
AND startYear > 1968