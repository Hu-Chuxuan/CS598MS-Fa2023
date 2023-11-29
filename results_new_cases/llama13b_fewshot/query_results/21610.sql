SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('War', tb.genres) > 0
AND startYear > 1995
AND startYear < 2010