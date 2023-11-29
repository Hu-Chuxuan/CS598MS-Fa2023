SELECT 
    title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, 
    title_ratings.averageRating, title_ratings.numVotes
FROM 
    title_basics 
INNER JOIN 
    title_ratings 
ON 
    title_basics.tconst = title_ratings.tconst 
WHERE 
    title_basics.genres = 'action' 
AND (
    title_basics.title LIKE '%Faster%' 
OR title_basics.originalTitle LIKE '%Faster%' 
OR title_ratings.title LIKE '%Faster%' 
OR title_ratings.originalTitle LIKE '%Faster%'
) 
AND title_basics.startYear >= 2010 
AND title_basics.endYear <= 2010 
AND NOT EXISTS (
    SELECT 
        1 
    FROM 
        title_ratings 
    WHERE 
        title_ratings.tconst = title_basics.tconst 
        AND title_ratings.numVotes > (
            SELECT 
                AVG(numVotes) 
            FROM 
                title_ratings 
            WHERE 
                title_ratings.tconst = title_basics.tconst
        )
) 
AND title_basics.nconst NOT IN (
    SELECT 
        nconst 
    FROM 
        name_basics 
    WHERE 
        name_basics.primaryName = 'Dwayne Johnson'
)

ORDER BY 
    title_ratings.averageRating DESC, title_basics.startYear DESC