SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('War', tb.genres) > 0 OR FIND_IN_SET('Drama', tb.genres) > 0)
AND (startYear > 2000 AND startYear < 2010)