SELECT 
title_basics.title_id, title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, 
title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, 
name_basics.deathYear, title_crew.directors, title_crew.writers, title_principals.ordering, 
title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.title_id = title_ratings.title_id
JOIN name_basics ON title_basics.title_id = name_basics.title_id
JOIN title_crew ON title_basics.title_id = title_crew.title_id
JOIN title_principals ON title_basics.title_id = title_principals.title_id
WHERE title_basics.title LIKE '%The Silence of the Hams%' 
AND title_ratings.averageRating > 7.5 
AND title_ratings.numVotes > 10000
AND name_basics.primaryName NOT IN ('The Incredibles', 'Isle Of Dogs', 'Despicable Me 2')
GROUP BY title_basics.title_id, title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, 
title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, 
name_basics.deathYear, title_crew.directors, title_crew.writers, title_principals.ordering, 
title_principals.category, title_principals.job, title_principals.characters
HAVING COUNT(DISTINCT name_basics.primaryName) > 2