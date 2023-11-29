SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE FIND_IN_SET(tb2.primaryTitle, (SELECT primaryTitle FROM title_basics WHERE genres LIKE '%Action%' LIMIT 1)) > 0
    AND FIND_IN_SET(tb2.primaryTitle, (SELECT primaryTitle FROM title_basics WHERE genres LIKE '%Comedy%' LIMIT 1)) > 0
) > 0