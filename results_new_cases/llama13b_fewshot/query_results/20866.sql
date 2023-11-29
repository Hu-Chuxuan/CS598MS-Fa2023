SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND startYear > 2000
AND (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE tb.primaryTitle = title_ratings.title
    AND rating > 6
    LIMIT 3
) > 0