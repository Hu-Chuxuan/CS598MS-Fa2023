SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Drama', tb.genres) > 0 OR FIND_IN_SET('Romance', tb.genres) > 0)
AND tb.startYear < 1990