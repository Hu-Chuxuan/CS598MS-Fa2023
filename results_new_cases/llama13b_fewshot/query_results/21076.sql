SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Romance', tb.genres) > 0
AND FIND_IN_SET('Animation', tb.genres) > 0
AND startYear > 1980
AND startYear < 2019
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND tb2.startYear > 1980
    AND tb2.startYear < 2019
) > 10