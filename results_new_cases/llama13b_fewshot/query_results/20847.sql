SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Adventure', tb.genres) > 0
AND FIND_IN_SET('Animated', tb.genres) > 0
AND startYear > 2005
AND (
    SELECT COUNT(*)
    FROM title_basics
    WHERE genres = 'Adventure'
      AND startYear > 2005
      AND primaryTitle = tb.primaryTitle
    LIMIT 1
) > 0