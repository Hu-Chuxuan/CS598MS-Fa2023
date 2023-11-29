SELECT
    t.title_basics.title,
    t.title_basics.primaryTitle,
    t.title_basics.originalTitle,
    t.title_basics.genres,
    c.name,
    c.birthYear,
    c.deathYear,
    c.primaryProfession,
    c.knownForTitles
FROM
    title_basics t
INNER JOIN
    name_basics c ON t.title_basics.nconst = c.nconst
WHERE
    t.title_basics.primaryTitle LIKE '%Man%'
    AND t.title_basics.genres LIKE '%Action%'
    AND t.title_basics.genres LIKE '%Adventure%'
    AND t.title_basics.startYear >= 2010
    AND t.title_basics.endYear <= 2020
    AND c.primaryProfession LIKE '%Actor%'
    AND c.knownForTitles LIKE '%The Avengers%'
    AND c.knownForTitles LIKE '%Deadpool%'
    AND NOT EXISTS (
        SELECT 1 FROM title_ratings
        WHERE title_basics.tconst = title_ratings.tconst
        AND user_ratings.rating > 7
    )
GROUP BY
    t.title_basics.title,
    t.title_basics.primaryTitle,
    t.title_basics.originalTitle,
    t.title_basics.genres,
    c.name,
    c.birthYear,
    c.deathYear,
    c.primaryProfession,
    c.knownForTitles
HAVING
    COUNT(DISTINCT c.name) > 1
ORDER BY
    t.title_basics.startYear DESC,
    t.title_basics.primaryTitle ASC