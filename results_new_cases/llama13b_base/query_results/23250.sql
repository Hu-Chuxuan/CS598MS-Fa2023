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
JOIN name_basics ON title_basics.primaryName = name_basics.primaryName
JOIN title_crew ON title_basics.directors = title_crew.directors
JOIN title_principals ON title_basics.ordering = title_principals.ordering
WHERE 
title_basics.genres = 'horror'
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
        title_basics.genres = 'horror'
    )
)
AND title_ratings.numVotes > 1000
AND name_basics.primaryProfession NOT IN ('Actor', 'Actress')
AND title_principals.job NOT IN ('Director', 'Writer')
AND title_crew.directors NOT IN ('Pixar Animation Studios', 'Illumination')
ORDER BY 
title_ratings.averageRating DESC