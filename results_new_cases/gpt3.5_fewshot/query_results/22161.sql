SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Comedy', tb.genres) > 0 OR FIND_IN_SET('Dark Comedy', tb.genres) > 0)
AND startYear > 1990
AND startYear < 2000