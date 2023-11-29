SELECT 
    t.title_basics.title,
    t.title_basics.primaryTitle,
    t.title_basics.originalTitle,
    t.title_basics.isAdult,
    t.title_basics.startYear,
    t.title_basics.endYear,
    t.title_basics.runtimeMinutes,
    t.title_basics.genres,
    c.name,
    c.birthYear,
    c.deathYear,
    c.primaryProfession,
    c.knownForTitles
FROM 
    title_basics t
INNER JOIN 
    name_basics c ON t.title_basics.directors = c.nconst
WHERE 
    t.title_basics.genres = 'Drama'
    AND t.title_basics.startYear BETWEEN 1990 AND 2010
    AND c.knownForTitles LIKE '%Fight Club%'
    AND c.knownForTitles NOT LIKE '%Bambi%'
GROUP BY 
    t.title_basics.title,
    t.title_basics.primaryTitle,
    t.title_basics.originalTitle,
    t.title_basics.isAdult,
    t.title_basics.startYear,
    t.title_basics.endYear,
    t.title_basics.runtimeMinutes,
    t.title_basics.genres,
    c.name,
    c.birthYear,
    c.deathYear,
    c.primaryProfession,
    c.knownForTitles
ORDER BY 
    RANDOM()