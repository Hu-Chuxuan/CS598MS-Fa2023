SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Family', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND tb2.startYear > 1980
    AND tb2.endYear < 2020
    AND tb2.runtimeMinutes > 90
) > 0