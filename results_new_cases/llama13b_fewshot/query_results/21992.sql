SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE FIND_IN_SET(tb2.genres, tb.genres) > 0
    AND tb2.startYear > 2010
    AND tb2.startYear < 2020
) > 0