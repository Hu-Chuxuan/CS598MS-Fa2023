SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear <= 1978
AND tb.primaryTitle <> 'Halloween'
AND EXISTS (
    SELECT 1
    FROM title_basics tb2
    WHERE tb2.primaryTitle = 'Lost in Translation'
    AND FIND_IN_SET(tb.genres, tb2.genres) > 0
)