SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Suspense', tb.genres) > 0
AND startYear > 2000
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE FIND_IN_SET(tb2.genres, tb.genres) > 0
    AND tb2.startYear > 2000
    AND tb2.endYear IS NULL
) > 0