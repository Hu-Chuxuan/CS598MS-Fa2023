SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Foreign', tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND startYear < 1995