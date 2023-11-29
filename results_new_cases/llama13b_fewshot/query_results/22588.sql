SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Science Fiction', tb.genres) > 0
AND startYear > 2010
AND (
    SELECT COUNT(*)
    FROM title_basics
    WHERE FIND_IN_SET(genres, 'The Shape of Water') > 0
    AND startYear > 2010
    LIMIT 1
) > 0