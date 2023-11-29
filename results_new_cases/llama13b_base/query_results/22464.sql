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
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.primaryName
JOIN title_crew ON title_basics.directors = title_crew.directors
JOIN title_principals ON title_basics.nconst = title_principals.nconst
WHERE title_basics.primaryTitle = 'The Incredibles (2004)' 
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating) 
    FROM title_ratings 
    WHERE title_ratings.tconst IN (
        SELECT tconst 
        FROM title_basics 
        WHERE primaryTitle = 'The Incredibles (2004)'
    )
)
AND title_basics.genres LIKE '%animation%'
AND title_principals.category = 'voice'
AND title_principals.job = 'actor'
AND title_principals.characters LIKE '%Baby%'
ORDER BY title_ratings.averageRating DESC