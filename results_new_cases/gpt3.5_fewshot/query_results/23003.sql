SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Biography', tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020