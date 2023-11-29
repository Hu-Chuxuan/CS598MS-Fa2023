SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Crime', tb.genres) > 0
AND FIND_IN_SET('Goodfellas (1990)', tb.genres) > 0
AND FIND_IN_SET('Casino (1995)', tb.genres) > 0
AND startYear > 1980
AND startYear < 2000