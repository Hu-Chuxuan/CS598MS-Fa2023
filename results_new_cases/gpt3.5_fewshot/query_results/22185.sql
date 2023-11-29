SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Horror', tb.genres) > 0 OR FIND_IN_SET('Thriller', tb.genres) > 0)
AND startYear > 1980
AND startYear < 1990
AND tb.titleType = 'movie'