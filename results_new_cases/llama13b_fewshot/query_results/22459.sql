SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 1975
AND startYear < 2020
AND EXISTS (
    SELECT 1
    FROM title_basics
    WHERE primaryTitle = 'Super Troopers'
    AND FIND_IN_SET(genres, 'Comedy') > 0
)
AND EXISTS (
    SELECT 1
    FROM title_basics
    WHERE primaryTitle = 'Super Troopers 2'
    AND FIND_IN_SET(genres, 'Comedy') > 0
)