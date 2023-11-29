SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND FIND_IN_SET('Mystery', tb.genres) > 0
AND FIND_IN_SET('Thriller', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020