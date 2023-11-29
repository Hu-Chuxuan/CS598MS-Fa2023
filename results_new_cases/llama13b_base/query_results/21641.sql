SELECT 
    title_basics.title,
    title_basics.primaryTitle,
    title_basics.originalTitle,
    title_basics.isAdult,
    title_basics.startYear,
    title_basics.endYear,
    title_basics.runtimeMinutes,
    title_basics.genres,
    title_ratings.averageRating,
    title_ratings.numVotes
FROM 
    title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
    title_basics.primaryTitle = 'Deadpool' AND 
    title_ratings.averageRating > (
        SELECT 
            AVG(title_ratings.averageRating)
        FROM 
            title_ratings
            JOIN name_basics ON title_ratings.nconst = name_basics.nconst
            WHERE 
                name_basics.primaryName = 'Russell Crowe' AND 
                title_ratings.tconst = 'A Beautiful Mind'
    )
    AND title_basics.genres LIKE '%Action%'
    AND title_basics.genres LIKE '%Comedy%'
    AND title_basics.startYear = 2016
ORDER BY 
    title_ratings.averageRating DESC