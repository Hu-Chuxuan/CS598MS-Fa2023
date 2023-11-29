SELECT * FROM title_basics
WHERE genre = 'Comedy'
AND (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE title_id = tconst
    AND numVotes > 100
) > (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE title_id = tconst
    AND numVotes < 100
)
ORDER BY averageRating DESC