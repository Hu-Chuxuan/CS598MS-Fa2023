SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Action', tb.genres) > 0 OR FIND_IN_SET('Comedy', tb.genres) > 0)
AND tb.startYear > 2000
AND tb.startYear < 2020