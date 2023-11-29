SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND tb.startYear > 1990
AND tb.startYear < 2005
AND tb.tconst NOT IN ('tt0133093', 'tt0294357', 'tt0281358')