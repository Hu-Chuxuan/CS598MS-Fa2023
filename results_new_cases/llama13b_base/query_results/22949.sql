SELECT 
    t.title_basics.title,
    t.title_basics.primaryTitle,
    t.title_basics.originalTitle,
    t.title_basics.isAdult,
    t.title_basics.startYear,
    t.title_basics.endYear,
    t.title_basics.runtimeMinutes,
    t.title_basics.genres,
    t.title_ratings.averageRating,
    t.title_ratings.numVotes,
    n.name_basics.primaryName,
    n.name_basics.birthYear,
    n.name_basics.deathYear,
    n.name_basics.primaryProfession,
    n.name_basics.knownForTitles
FROM
    title_basics t
    JOIN title_ratings tr ON t.tconst = tr.tconst
    JOIN name_basics n ON t.primaryTitle = n.primaryName
WHERE
    t.genres LIKE '%War' AND t.genres LIKE '%Action'
    AND tr.averageRating > 7
    AND n.primaryProfession = 'Actor'
ORDER BY
    t.startYear DESC,
    t.endYear DESC,
    t.runtimeMinutes ASC