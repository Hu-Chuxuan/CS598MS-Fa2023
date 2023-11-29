SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Action', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_ratings
    WHERE tb.tconst = title_ratings.tconst
    AND genre = 'Comedy'
    AND averageRating > (
        SELECT AVG(averageRating)
        FROM title_ratings
        WHERE tb.tconst = title_ratings.tconst
        AND genre = 'Action'
    )
) > 0