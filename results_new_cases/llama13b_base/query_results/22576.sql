SELECT * FROM title_basics tb
JOIN (
    SELECT tconst, AVG(rating) AS avg_rating
    FROM title_ratings
    GROUP BY tconst
) AS tr
ON tb.tconst = tr.tconst
WHERE tb.genres = 'Action'
AND tr.avg_rating > (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE tconst IN (
        SELECT tconst
        FROM title_ratings
        WHERE user_id = (
            SELECT uid
            FROM name_basics
            WHERE primaryName = 'Star Wars'
        )
    )
)
ORDER BY tr.avg_rating DESC