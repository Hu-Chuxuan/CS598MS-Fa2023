SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND (
SELECT COUNT(*)
FROM title_basics tb2
WHERE FIND_IN_SET(tb2.genres, tb.genres) > 0
AND tb2.primaryTitle IN (SELECT primaryTitle FROM title_basics WHERE startYear > 2000 LIMIT 3)
) > 0