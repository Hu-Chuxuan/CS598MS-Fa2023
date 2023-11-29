SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE FIND_IN_SET('Comedy', tb2.genres) > 0
    AND tb2.primaryTitle = tb.primaryTitle
    AND tb2.startYear > 2000
    AND tb2.startYear < 2020
) > 0