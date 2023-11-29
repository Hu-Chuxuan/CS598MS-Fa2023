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
    JOIN title_ratings tr ON t.tconst = tr.tconst 
    JOIN name_basics n ON t.primaryTitle = n.primaryName 
    JOIN title_crew c ON t.tconst = c.tconst 
WHERE 
    t.primaryTitle IN ('Spotlight', 'The Post') 
    AND tr.averageRating > 7 
    AND n.birthYear = 2002 
    AND n.knownForTitles IN ('Signs') 
    AND c.category = 'Director' 
    AND c.job = 'Writer' 
    AND c.characters LIKE '%black%'
ORDER BY 
    t.startYear DESC