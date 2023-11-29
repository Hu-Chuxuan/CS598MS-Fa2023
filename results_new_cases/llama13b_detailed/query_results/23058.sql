SELECT
    t.title,
    t.titleType,
    t.primaryTitle,
    t.originalTitle,
    t.isAdult,
    t.startYear,
    t.endYear,
    t.runtimeMinutes,
    t.genres,
    c.category,
    c.job,
    c.characters
FROM
    title_basics t
INNER JOIN
    title_crew c ON t.tconst = c.tconst
INNER JOIN
    title_principals p ON c.tconst = p.tconst
WHERE
    t.primaryTitle LIKE '%Action%'
    OR t.originalTitle LIKE '%Action%'
    OR t.genres LIKE '%Action%'
    OR p.job LIKE '%Action%'
    OR p.characters LIKE '%Action%'
GROUP BY
    t.title,
    t.titleType,
    t.primaryTitle,
    t.originalTitle,
    t.isAdult,
    t.startYear,
    t.endYear,
    t.runtimeMinutes,
    t.genres,
    c.category,
    c.job,
    c.characters
HAVING
    COUNT(DISTINCT p.nconst) > 1
ORDER BY
    t.startYear DESC,
    t.primaryTitle ASC