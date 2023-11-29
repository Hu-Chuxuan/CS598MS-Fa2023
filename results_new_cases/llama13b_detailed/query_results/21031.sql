SELECT * FROM title_basics
WHERE titleType ='movie' AND genres LIKE '%Action%' AND runtimeMinutes > 120
AND (
    SELECT AVG(averageRating)
    FROM title_ratings
    WHERE title_id = tconst
) > (
    SELECT AVG(averageRating)
    FROM title_ratings
    WHERE title_id = tconst AND numVotes > 1000
)
ORDER BY averageRating DESC
LIMIT 5