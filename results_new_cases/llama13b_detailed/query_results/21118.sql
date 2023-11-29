SELECT
    t.title,
    t.primaryTitle,
    t.originalTitle,
    t.isAdult,
    t.startYear,
    t.endYear,
    t.runtimeMinutes,
    t.genres,
    n.name,
    n.birthYear,
    n.deathYear,
    n.primaryProfession,
    n.knownForTitles
FROM
    title_basics t
INNER JOIN
    name_basics n ON t.directors = n.nconst
WHERE
    t.genres LIKE '%Mystery%'
AND t.primaryTitle LIKE '%Memento%'
AND n.primaryProfession LIKE '%Director%'
AND n.knownForTitles LIKE '%She%s All That (1999)%'
ORDER BY
    t.startYear DESC,
    t.endYear DESC,
    t.runtimeMinutes ASC