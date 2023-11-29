SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 1975
AND startYear < 1995
AND FIND_IN_SET('Comedy', tb.genres) > 0