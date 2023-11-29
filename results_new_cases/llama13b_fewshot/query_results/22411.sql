SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND FIND_IN_SET('Superhero', tb.genres) > 0
AND startYear > 2000
AND (
    SELECT COUNT(*)
    FROM title_ratings
    WHERE tconst = tb.primaryTitle
      AND averageRating > 6
      AND numVotes > 1000
    LIMIT 1
) > 0