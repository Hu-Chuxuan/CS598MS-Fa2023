SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Horror', tb.genres) > 0 OR FIND_IN_SET('Thriller', tb.genres) > 0)
AND tb.startYear < 2019
AND tb.startYear > 1985