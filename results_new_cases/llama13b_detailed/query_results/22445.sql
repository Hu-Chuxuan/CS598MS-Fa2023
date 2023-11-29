SELECT * FROM title_basics
WHERE genres LIKE '%Comedy%' AND genres LIKE '%Stoner%'
AND (
    (startYear BETWEEN 2000 AND 2010)
    OR (startYear = 1980 AND endYear = 1990)
    OR (startYear = 2010 AND endYear = 2020)
)
AND (
    (runtimeMinutes > 60)
    OR (runtimeMinutes = 90 AND genres LIKE '%Animation%')
)
AND (
    NOT EXISTS (
        SELECT 1 FROM title_ratings
        WHERE title_basics.tconst = title_ratings.tconst
        AND averageRating > 7
    )
)
ORDER BY averageRating DESC, numVotes DESC