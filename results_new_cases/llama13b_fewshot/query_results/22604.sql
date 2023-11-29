SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE title = tb.primaryTitle
    AND numVotes > 100
) > 6