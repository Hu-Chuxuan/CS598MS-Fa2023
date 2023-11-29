SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND FIND_IN_SET('Faster', tb.genres) > 0
AND startYear > 2000
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE FIND_IN_SET(tb2.genres, tb.genres) > 0
    AND tb2.primaryTitle NOT IN (SELECT primaryTitle FROM title_basics WHERE startYear < 2010 LIMIT 10)
) > 0