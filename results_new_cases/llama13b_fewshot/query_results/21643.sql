SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Mystery', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND FIND_IN_SET('Crime', tb2.genres) > 0
) > 0