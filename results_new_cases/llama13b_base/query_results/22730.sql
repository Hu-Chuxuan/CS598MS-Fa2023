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
name_basics.knownForTitles, 
title_crew.directors, 
title_crew.writers, 
title_principals.ordering, 
title_principals.category, 
title_principals.job, 
title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.title LIKE '%Fight Club%'
AND title_ratings.averageRating > 7
AND title_principals.category = 'actor'
AND title_principals.job = 'director'
AND name_basics.primaryName = 'David Fincher'
AND NOT EXISTS (
  SELECT 1 
  FROM title_basics 
  WHERE title_basics.tconst = title_principals.tconst 
  AND title_basics.isAdult = 1
)
GROUP BY title_basics.title
HAVING COUNT(DISTINCT title_principals.job) > 1
ORDER BY title_basics.startYear DESC