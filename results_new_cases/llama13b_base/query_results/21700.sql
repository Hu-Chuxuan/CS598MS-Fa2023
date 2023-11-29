SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, 
title_ratings.averageRating, title_ratings.numVotes
FROM 
title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
title_basics.genres IN ('Comedy', 'Horror', 'Crime') 
AND title_ratings.averageRating > 7
AND NOT EXISTS (
    SELECT 
    1 
    FROM 
    name_basics 
    JOIN title_crew ON name_basics.nconst = title_crew.nconst 
    JOIN title_principals ON title_crew.tconst = title_principals.tconst 
    WHERE 
    title_principals.job = 'Actor' 
    AND name_basics.birthYear = '1970' 
    AND name_basics.deathYear = '2020' 
)
GROUP BY 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, 
title_ratings.averageRating, title_ratings.numVotes
HAVING 
COUNT(DISTINCT title_basics.tconst) > 5
ORDER BY 
title_ratings.averageRating DESC