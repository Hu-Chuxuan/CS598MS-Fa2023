SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.startYear > 2000
AND tb.startYear < 2020
AND (FIND_IN_SET('Action', tb.genres) > 0 OR FIND_IN_SET('Comedy', tb.genres) > 0)
AND tb.tconst NOT IN ('tt3890160', 'tt1465522', 'tt0780504')