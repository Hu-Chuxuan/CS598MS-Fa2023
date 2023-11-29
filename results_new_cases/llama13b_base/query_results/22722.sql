SELECT 
    title_basics.title,
    title_basics.primaryTitle,
    title_basics.originalTitle,
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
    title_basics.genres LIKE '%War%'
    AND title_basics.startYear BETWEEN 2000 AND 2020
    AND title_ratings.averageRating > 7
    AND title_ratings.numVotes > 1000
    AND NOT EXISTS (
        SELECT 
            1
        FROM 
            name_basics
        WHERE 
            name_basics.primaryName = title_basics.primaryTitle
            AND name_basics.birthYear = 2007
    )
    AND NOT EXISTS (
        SELECT 
            1
        FROM 
            title_crew
        WHERE 
            title_crew.directors = title_basics.primaryTitle
            AND title_crew.writers = title_basics.primaryTitle
    )
    AND NOT EXISTS (
        SELECT 
            1
        FROM 
            title_principals
        WHERE 
            title_principals.ordering = title_basics.tconst
            AND title_principals.category = 'actor'
            AND title_principals.job = 'lead'
            AND title_principals.characters = 'Tom Hanks'
    )
    AND title_basics.primaryTitle NOT IN (
        SELECT 
            1
        FROM 
            user_preferences
        WHERE 
            user_preferences.title = title_basics.primaryTitle
    )

ORDER BY 
    title_basics.startYear DESC, 
    title_ratings.averageRating DESC