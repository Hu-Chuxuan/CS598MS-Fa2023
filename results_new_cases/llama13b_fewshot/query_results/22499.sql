SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Animation', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Adventure', tb.genres) > 0
AND startYear > 2015
AND (
    SELECT COUNT(*)
    FROM title_basics
    WHERE genres = 'Animation'
    AND startYear = 2017
    AND primaryTitle = 'Coco'
    LIMIT 1
    OR
    SELECT COUNT(*)
    FROM title_basics
    WHERE genres = 'Animation'
    AND startYear = 2016
    AND primaryTitle = 'Sing'
    LIMIT 1
    OR
    SELECT COUNT(*)
    FROM title_basics
    WHERE genres = 'Animation'
    AND startYear = 2016
    AND primaryTitle = 'Moana'
    LIMIT 1
) > 0