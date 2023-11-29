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
    title_basics.genres LIKE '%Action%' AND title_basics.genres LIKE '%Comedy%' AND 
    title_ratings.averageRating > (
        SELECT 
            AVG(title_ratings.averageRating)
        FROM 
            title_ratings
        WHERE 
            title_ratings.tconst IN (
                SELECT 
                    title_basics.tconst
                FROM 
                    title_basics
                WHERE 
                    title_basics.primaryTitle IN (
                        SELECT 
                            title_basics.primaryTitle
                        FROM 
                            title_basics
                        WHERE 
                            title_basics.genres LIKE '%Action%' AND title_basics.genres LIKE '%Comedy%'
                    )
            )
            AND title_ratings.numVotes > 1000
    )
    AND title_basics.isAdult = 0
ORDER BY 
    title_ratings.averageRating DESC, title_basics.startYear DESC