SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Slasher', tb.genres) > 0
AND startYear > 1975
AND startYear < 2015