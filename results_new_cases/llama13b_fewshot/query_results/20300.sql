SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Superhero', tb.genres) > 0
AND startYear > 2000
AND (
    SELECT COUNT(*)
    FROM title_basics
    WHERE FIND_IN_SET(tb.genres, genres) > 0
    AND startYear > 2000
    AND primaryTitle NOT IN (SELECT primaryTitle FROM title_basics WHERE startYear < 2000 LIMIT 10)
) > 0