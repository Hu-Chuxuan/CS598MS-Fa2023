SELECT 
    t.title_basics.title, 
    t.title_basics.primaryTitle, 
    t.title_basics.originalTitle, 
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
    JOIN title_ratings tr ON t.title_basics.tconst = tr.tconst
    JOIN name_basics n ON t.title_basics.nconst = n.nconst
WHERE 
    t.genres LIKE '%horror%' 
    AND t.title_ratings.averageRating > 7 
    AND t.title_ratings.numVotes > 1000
    AND n.primaryProfession = 'Actor'
    AND n.knownForTitles LIKE '%Halloween%' 
    OR n.knownForTitles LIKE '%Scream%'
ORDER BY 
    t.title_basics.startYear DESC, 
    t.title_basics.endYear DESC, 
    t.title_basics.runtimeMinutes ASC