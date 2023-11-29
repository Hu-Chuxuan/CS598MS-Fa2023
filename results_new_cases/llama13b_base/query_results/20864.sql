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
    n.primaryName, 
    n.birthYear, 
    n.deathYear, 
    n.primaryProfession, 
    n.knownForTitles, 
    c.category, 
    c.job, 
    c.characters 
FROM 
    title_basics t 
    JOIN name_basics n ON t.primaryTitle = n.title 
    JOIN title_crew c ON t.tconst = c.tconst 
WHERE 
    t.genres LIKE '%Horror%' AND 
    t.startYear <= 2022 AND 
    t.endYear >= 2000 AND 
    n.primaryProfession = 'Actor' AND 
    c.category = 'Director' AND 
    c.job = 'Director' AND 
    c.characters = 'Jordan Peele' 
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
    n.primaryName, 
    n.birthYear, 
    n.deathYear, 
    n.primaryProfession, 
    n.knownForTitles, 
    c.category, 
    c.job, 
    c.characters 
HAVING 
    COUNT(DISTINCT t.tconst) > 1 AND 
    COUNT(DISTINCT n.title) > 1 AND 
    COUNT(DISTINCT c.tconst) > 1