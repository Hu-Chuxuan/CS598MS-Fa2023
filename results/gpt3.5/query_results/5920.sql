SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle != 'Rings  (2017)'
AND genres LIKE '%Horror%'
AND startYear >= 2010
AND tconst IN (
    SELECT tconst
    FROM title_principals
    WHERE nconst IN (
        SELECT nconst
        FROM title_principals
        WHERE tconst = (
            SELECT tconst
            FROM title_basics
            WHERE primaryTitle = 'Rings  (2017)'
        )
        AND category = 'director'
    )
    AND tconst != (
        SELECT tconst
        FROM title_basics
        WHERE primaryTitle = 'The Conjuring 2 (2016)'
    )
)
ORDER BY averageRating DESC
LIMIT 5