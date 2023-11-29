SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND FIND_IN_SET('Suspense', tb.genres) > 0
AND EXISTS (
    SELECT 1
    FROM title_basics tb2
    WHERE tb2.primaryTitle!= tb.primaryTitle
    AND FIND_IN_SET('Mind Twisting Plot', tb2.genres) > 0
)
