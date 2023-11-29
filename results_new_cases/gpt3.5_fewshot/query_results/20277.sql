SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Psychological Thriller', tb.genres) > 0
AND startYear > 2010
AND startYear < 2020