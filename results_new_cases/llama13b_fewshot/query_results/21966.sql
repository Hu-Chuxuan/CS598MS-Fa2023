SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Action', tb.genres) > 0
AND startYear > 1980
AND startYear < 2015
AND (
    SELECT COUNT(*)
    FROM title_basics
    WHERE FIND_IN_SET('Comedy', genres) > 0
    AND FIND_IN_SET('Action', genres) > 0
    AND startYear > 1980
    AND startYear < 2015
    AND primaryTitle = tb.primaryTitle
    LIMIT 10
) > 0