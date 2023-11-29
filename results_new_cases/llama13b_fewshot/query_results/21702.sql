SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Kung Fu', tb.genres) > 0
AND startYear > 2000
AND (
    SELECT COUNT(*)
    FROM title_basics
    WHERE genres = tb.genres
    AND startYear = tb.startYear
    AND primaryTitle = tb.primaryTitle
    LIMIT 1
) > 0