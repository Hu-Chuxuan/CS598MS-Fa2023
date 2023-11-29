SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND FIND_IN_SET('Biography', tb.genres) > 0
AND EXISTS (
    SELECT 1
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND FIND_IN_SET('Phantom Thread', tb2.genres) > 0
)