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
    r.averageRating, 
    r.numVotes, 
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
    JOIN title_ratings r ON t.tconst = r.tconst
    JOIN name_basics n ON t.primaryName = n.primaryName
    JOIN title_crew c ON t.tconst = c.tconst
WHERE 
    t.titleType = 'action'
    AND r.averageRating > (
        SELECT 
            AVG(r2.averageRating)
        FROM 
            title_ratings r2
            JOIN name_basics n2 ON r2.tconst = n2.primaryName
            WHERE 
                n2.primaryName = 'Bridget Jones's Diary  (2001)'
    )
    AND t.primaryTitle NOT IN (
        SELECT 
            t2.primaryTitle
        FROM 
            title_basics t2
            JOIN title_ratings r2 ON t2.tconst = r2.tconst
            WHERE 
                r2.averageRating < 5
    )
ORDER BY 
    r.averageRating DESC, 
    t.startYear DESC