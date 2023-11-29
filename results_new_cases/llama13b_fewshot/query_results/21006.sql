SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Romance', tb.genres) > 0
AND FIND_IN_SET('Thriller', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020