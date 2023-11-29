SELECT * FROM title_basics
WHERE genres LIKE '%Horror%'
AND (
    (directors OR writers) IN (
        SELECT nconst
        FROM name_basics
        WHERE primaryProfession LIKE '%Director%'
        OR primaryProfession LIKE '%Writer%'
    )
)
AND tconst NOT IN (
    SELECT tconst
    FROM title_ratings
    WHERE numVotes > 5000
)
ORDER BY averageRating DESC, startYear ASC