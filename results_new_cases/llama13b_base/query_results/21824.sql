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
    JOIN name_basics c ON t.directors = c.nconst
WHERE 
    t.directors = 'James Cameron'
    AND t.title_basics.title NOT IN (SELECT n.title FROM name_basics n WHERE n.knownForTitles = 'Sweet Home Alabama (2002)' OR n.knownForTitles = 'Legally Blonde (2001)')
ORDER BY 
    t.title_basics.startYear DESC