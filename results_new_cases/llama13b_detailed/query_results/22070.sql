SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_crew.directors, 
title_principals.characters
FROM 
title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
title_basics.titleType ='movie' 
AND title_basics.primaryTitle LIKE '%animals%' 
AND NOT EXISTS (
  SELECT 
  1 
  FROM 
   title_ratings 
  WHERE 
   title_ratings.tconst = title_basics.tconst 
   AND title_ratings.averageRating < 5 
   AND title_ratings.numVotes > 100
) 
AND NOT EXISTS (
  SELECT 
  1 
  FROM 
   title_principals 
  WHERE 
   title_principals.nconst = title_basics.directors
   AND title_principals.category = 'director'
)
AND title_basics.startYear > 2000
AND title_basics.runtimeMinutes < 120
ORDER BY 
title_basics.primaryTitle, title_principals.characters