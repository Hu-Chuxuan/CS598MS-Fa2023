SELECT 
    t.title_basics.title, 
    t.title_basics.primaryTitle, 
    t.title_basics.originalTitle, 
    t.title_basics.isAdult, 
    t.title_basics.startYear, 
    t.title_basics.endYear, 
    t.title_basics.runtimeMinutes, 
    t.title_basics.genres, 
    r.averageRating, 
    r.numVotes, 
    n.name_basics.primaryName, 
    n.name_basics.birthYear, 
    n.name_basics.deathYear, 
    n.name_basics.primaryProfession, 
    n.name_basics.knownForTitles, 
    c.category, 
    c.job, 
    c.characters
FROM 
    title_basics t 
    JOIN title_ratings r ON t.title_basics.tconst = r.tconst 
    JOIN name_basics n ON t.title_basics.primaryTitle = n.primaryName 
    JOIN title_crew c ON t.title_basics.tconst = c.tconst 
WHERE 
    t.title_basics.genres ='mystery' 
    AND r.averageRating > 7 
    AND r.numVotes > 1000 
    AND n.primaryProfession = 'actor' 
    AND c.category = 'director' 
    AND c.job = 'writer' 
    AND c.characters = 'lead'
ORDER BY 
    r.averageRating DESC, 
    r.numVotes DESC