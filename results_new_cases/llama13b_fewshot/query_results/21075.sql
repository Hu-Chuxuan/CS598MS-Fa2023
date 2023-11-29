SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Family', tb.genres) > 0
AND FIND_IN_SET('Animated', tb.genres) > 0
AND startYear > 2010
AND (
    SELECT COUNT(*)
    FROM title_basics
    WHERE genres = 'Family'
    AND startYear = tb.startYear
    AND primaryTitle!= tb.primaryTitle
    LIMIT 1
) < 3