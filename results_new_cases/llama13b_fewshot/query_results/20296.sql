SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_ratings tr
    WHERE tr.titleId = tb.tconst
    AND tr.averageRating > 6.5
    LIMIT 10
) > 0