SELECT * FROM title_basics
WHERE genres LIKE '%Drama%' AND genres LIKE '%Mystery%' AND startYear > 2000
AND (
    SELECT AVG(rating) FROM title_ratings
    WHERE title_id = tconst
    AND numVotes > 1000
    AND (
        SELECT COUNT(*) FROM title_principals
        WHERE tconst = title_id AND category = 'actor' AND characters LIKE '%Lawrence%'
        AND (
            SELECT COUNT(*) FROM title_principals
            WHERE tconst = title_id AND category = 'actor' AND characters LIKE '%Stone%'
        )
    )
)
ORDER BY averageRating DESC, numVotes DESC