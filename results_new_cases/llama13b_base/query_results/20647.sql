SELECT 
title_basics.title,
title_basics.primaryTitle,
title_ratings.averageRating,
title_crew.directors,
title_principals.characters
FROM 
title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.genres LIKE '%comedy%' AND title_basics.genres LIKE '%action%'
AND NOT EXISTS (
  SELECT  1 
  FROM 
  title_ratings 
  WHERE 
  title_ratings.tconst = title_basics.tconst AND 
  title_ratings.numVotes > 1000
)
AND NOT EXISTS (
  SELECT  1 
  FROM 
  title_principals 
  WHERE 
  title_principals.tconst = title_basics.tconst AND 
  title_principals.job = 'Director' AND 
  title_principals.characters = 'Jason Voorhees'
)
AND title_basics.startYear BETWEEN 1990 AND 2018
AND title_basics.endYear BETWEEN 1990 AND 2018
AND title_basics.runtimeMinutes BETWEEN 90 AND 180

