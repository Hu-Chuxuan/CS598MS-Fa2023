SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Dark Comedy', tb.genres) > 0
AND FIND_IN_SET('Fargo (1996)', tb.genres) > 0
AND startYear > 2015
AND startYear < 2020