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
    title_basics.primaryTitle IN ('Dunkirk', 'Saving Private Ryan')
    AND title_ratings.averageRating > (
        SELECT 
            AVG(title_ratings.averageRating)
        FROM 
            title_ratings
            JOIN name_basics ON title_ratings.nconst = name_basics.nconst
            WHERE 
                name_basics.primaryName = 'The Shining'
                OR name_basics.primaryName = 'The Birds'
                OR name_basics.primaryName = 'The Hills Have Eyes'
                OR name_basics.primaryName = 'Frozen'
                OR name_basics.primaryName = 'The Witch'
    )
ORDER BY 
    title_ratings.averageRating DESC