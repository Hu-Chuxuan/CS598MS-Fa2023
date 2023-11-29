SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE FIND_IN_SET('Animated', tb2.genres) > 0
    AND tb2.primaryTitle = tb.primaryTitle
) > 0