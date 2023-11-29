SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, 
title_ratings.averageRating, title_ratings.numVotes, 
name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, 
title_crew.directors, title_crew.writers, 
title_principals.ordering, title_principals.category, title_principals.job, 
title_principals.characters
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE title_basics.primaryTitle LIKE '%Rachel McAdams%' 
AND title_ratings.averageRating > 7 
AND title_principals.category = 'actress' 
AND title_principals.job = 'lead' 
AND title_principals.characters = 'Bridget Jones'
GROUP BY title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, 
title_ratings.averageRating, title_ratings.numVotes, 
name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, 
title_crew.directors, title_crew.writers, 
title_principals.ordering, title_principals.category, title_principals.job, 
title_principals.characters
HAVING COUNT(DISTINCT title_principals.job) > 1