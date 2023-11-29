SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_crew.directors, 
title_principals.characters
FROM 
title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
title_basics.primaryTitle LIKE '%Scarlett Johansson%' 
AND title_basics.startYear > 1990 
AND title_basics.endYear < 2020 
AND title_principals.category = 'actor' 
AND title_principals.job = 'actor' 
AND title_crew.directors LIKE '%Scarlett Johansson%' 
AND title_crew.writers LIKE '%Scarlett Johansson%' 
AND title_ratings.averageRating > 6 
AND title_ratings.numVotes > 1000
ORDER BY 
title_basics.primaryTitle, title_principals.characters