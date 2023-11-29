SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Action', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_ratings tr
    WHERE tr.titleId = tb.tconst
    AND tr.averageRating > 5
    AND tr.numVotes > 1000
) > 0