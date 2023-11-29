SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Sci-Fi', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics
    WHERE FIND_IN_SET('Sci-Fi', genres) > 0
    AND startYear > 2000
    AND startYear < 2020
    LIMIT 1
) > 0