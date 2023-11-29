SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Romance', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND FIND_IN_SET(tb2.genres, 'Romance') > 0
) > 0