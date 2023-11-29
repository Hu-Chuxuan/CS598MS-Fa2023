SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.actors, 'Sandra Bullock') > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.actors = tb.actors
    AND tb2.primaryTitle IN (SELECT primaryTitle FROM title_basics WHERE startYear > 1995 LIMIT 10)
) > 0