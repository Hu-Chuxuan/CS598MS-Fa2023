SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 1975
AND startYear < 1995
AND FIND_IN_SET('The Lost Boys', (SELECT title_basics.primaryTitle FROM title_basics WHERE genres = 'Horror' AND startYear = 1987 LIMIT 1)) > 0