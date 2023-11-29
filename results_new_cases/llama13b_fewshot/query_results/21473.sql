SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Vampire', tb.genres) > 0
AND startYear > 1980
AND startYear < 2019
AND NOT EXISTS (
    SELECT 1
    FROM title_basics
    WHERE primaryTitle = tb.primaryTitle
    AND startYear < 1987
)
