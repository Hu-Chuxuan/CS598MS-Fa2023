SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.startYear > 1980
AND tb.startYear < 2010
AND (FIND_IN_SET('Drama', tb.genres) > 0 OR FIND_IN_SET('Thriller', tb.genres) > 0)