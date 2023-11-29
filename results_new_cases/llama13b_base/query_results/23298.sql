SELECT 
    title_basics.title,
    title_basics.primaryTitle,
    title_basics.originalTitle,
    title_ratings.averageRating,
    title_crew.directors,
    title_principals.characters
FROM 
    title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
    JOIN title_crew ON title_basics.tconst = title_crew.tconst
    JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
    title_basics.title LIKE '%Pitch Perfect%'
    AND title_ratings.numVotes > 1000
    AND title_crew.directors LIKE '%Jason Moore%'
    AND title_principals.characters LIKE '%The Bellas%'
    AND title_basics.endYear > 2012
    AND title_basics.startYear < 2016
    AND NOT EXISTS (
        SELECT 
            * 
        FROM 
            title_basics 
        WHERE 
            title_basics.title = title_basics.originalTitle 
            AND title_basics.tconst = title_ratings.tconst
            AND title_basics.tconst = title_crew.tconst
            AND title_basics.tconst = title_principals.tconst
            AND title_basics.endYear > 2012
            AND title_basics.startYear < 2016
            AND title_ratings.numVotes > 1000
            AND title_crew.directors LIKE '%Jason Moore%'
            AND title_principals.characters LIKE '%The Bellas%'
    )
GROUP BY 
    title_basics.title,
    title_basics.primaryTitle,
    title_basics.originalTitle
ORDER BY 
    title_ratings.averageRating DESC