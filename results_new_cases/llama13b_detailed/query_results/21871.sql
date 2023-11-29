SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.originalTitle, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_crew.directors, 
title_crew.writers, 
title_principals.category, 
title_principals.job, 
title_principals.characters, 
title_ratings.averageRating, 
title_ratings.numVotes
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.primaryTitle LIKE '%Dumb and Dumber%' 
OR title_basics.primaryTitle LIKE '%Superbad%'
AND title_ratings.averageRating > 6
AND title_ratings.numVotes > 1000
AND title_principals.category NOT IN ('self', 'editor')
AND title_crew.directors NOT IN ('nm0005690')  -- exclude Jim Carrey as a director
AND title_crew.writers NOT IN ('nm0374658')  -- exclude Adam Sandler as a writer
AND title_principals.job NOT IN ('director of photography')
AND title_principals.characters NOT IN ('[""Assistant""]')
GROUP BY title_basics.tconst
HAVING COUNT(DISTINCT title_principals.category) > 2
ORDER BY title_ratings.averageRating DESC