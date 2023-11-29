SELECT * FROM title_basics
WHERE genre = 'Superhero'
AND (
    (directors OR writers) IN (
        SELECT nconst
        FROM title_crew
        WHERE title_basics.tconst = title_crew.tconst
    )
    OR (
        characters IN (
            SELECT nconst
            FROM title_principals
            WHERE title_basics.tconst = title_principals.tconst
        )
    )
)
AND (
    (startYear >= 2000 AND endYear <= 2022)
    OR (
        (startYear <= 2000 AND endYear >= 2022)
        AND (runtimeMinutes > 120 OR runtimeMinutes < 60)
    )
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 2