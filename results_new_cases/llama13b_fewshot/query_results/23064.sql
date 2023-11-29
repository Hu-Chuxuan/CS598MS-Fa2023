SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Adventure', tb.genres) > 0
AND startYear > 1975
AND startYear < 2020