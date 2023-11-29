SELECT
    t.title_basics.title,
    t.title_basics.primaryTitle,
    t.title_basics.genres,
    t.title_principals.characters,
    t.title_ratings.averageRating
FROM
    title_basics t
INNER JOIN
    title_crew c ON t.tconst = c.tconst
INNER JOIN
    title_principals p ON t.tconst = p.tconst
INNER JOIN
    title_ratings r ON t.tconst = r.tconst
WHERE
    t.primaryTitle LIKE '%Thor%'
    AND t.genres LIKE '%Action%'"
    AND t.genres LIKE '%Adventure%'"
    AND t.genres LIKE '%Fantasy%'"
    AND c.directors = ANY('Thor'::text)
    AND p.category = ANY('Actor'::text)
    AND r.numVotes > 1000
GROUP BY
    t.title_basics.title,
    t.title_basics.primaryTitle,
    t.title_basics.genres,
    t.title_principals.characters,
    t.title_ratings.averageRating
HAVING
    AVG(r.averageRating) > 7
ORDER BY
    AVG(r.averageRating) DESC