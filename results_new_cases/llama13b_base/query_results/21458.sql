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
title_ratings.numVotes, 
name_basics.primaryName, 
name_basics.birthYear, 
name_basics.deathYear, 
name_basics.primaryProfession, 
name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE title_basics.title LIKE '%The Master of Disguise%'
AND title_ratings.averageRating > (
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
                title_basics.title LIKE '%John Wick%' OR 
                title_basics.title LIKE '%Taken%'
        )
    AND title_ratings.numVotes > 1000
)
AND title_basics.genres LIKE '%Action%'
AND title_basics.startYear BETWEEN 2000 AND 2020
ORDER BY 
    title_ratings.averageRating DESC