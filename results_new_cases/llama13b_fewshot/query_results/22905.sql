SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Monster', tb.genres) > 0
AND FIND_IN_SET('Fantasy', tb.genres) > 0
AND startYear > 2000
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND tb2.startYear = tb.startYear
    AND tb2.genres = tb.genres
    LIMIT 1
) < 2