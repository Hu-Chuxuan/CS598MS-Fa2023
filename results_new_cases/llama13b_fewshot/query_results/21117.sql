SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Detective', tb.genres) > 0
AND startYear > 1980
AND startYear < 2020
AND (
    SELECT COUNT(*)
    FROM title_basics
    WHERE FIND_IN_SET(tb.genres, genres) > 0
    AND startYear > 1980
    AND startYear < 2020
) > (
    SELECT COUNT(*)
    FROM title_basics
    WHERE FIND_IN_SET(tb.genres, genres) > 0
    AND startYear > 1980
    AND startYear < 2020
) / 2