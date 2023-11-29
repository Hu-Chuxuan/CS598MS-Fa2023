SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Science Fiction', tb.genres) > 0
AND FIND_IN_SET('Edgy', tb.genres) > 0
AND startYear > 1980
AND startYear < 2016
AND NOT EXISTS (
    SELECT 1
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND tb2.startYear > 2015
)