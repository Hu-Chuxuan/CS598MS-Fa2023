SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Thriller', tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020
AND NOT EXISTS (
    SELECT 1
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND tb2.startYear < tb.startYear
)