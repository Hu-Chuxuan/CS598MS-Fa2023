SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND tb.startYear > 2000
AND tb.startYear < 2010
AND tb.tconst NOT IN ('tt0311113', 'tt0486551')