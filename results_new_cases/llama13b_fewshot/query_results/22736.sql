SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Ghost', tb.genres) > 0
AND FIND_IN_SET('Animated', tb.genres) > 0
AND startYear > 1990
AND (endYear IS NULL OR endYear < 2020)