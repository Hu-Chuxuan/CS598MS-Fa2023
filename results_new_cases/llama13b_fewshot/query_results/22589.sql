SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 2015
AND startYear < 2020
AND EXISTS (
    SELECT 1
    FROM title_basics
    WHERE primaryTitle = 'The Shape of Water'
    AND FIND_IN_SET(genres, tb.genres) > 0
)