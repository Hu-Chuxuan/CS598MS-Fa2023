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
FROM 
title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE 
title_basics.title LIKE '%The Martian%'
AND title_ratings.averageRating > (
    SELECT 
        AVG(title_ratings.averageRating)
    FROM 
        title_ratings
    WHERE 
        title_ratings.tconst IN (
            SELECT 
                tconst
            FROM 
                title_basics
            WHERE 
                title_basics.title LIKE '%Mission: Impossible%'
        )
    AND title_ratings.numVotes > 1000
)
AND name_basics.primaryName NOT IN (
    SELECT 
        primaryName
    FROM 
        name_basics
    WHERE 
        name_basics.primaryProfession = 'Director'
)
ORDER BY 
title_basics.startYear DESC, 
title_ratings.averageRating DESC