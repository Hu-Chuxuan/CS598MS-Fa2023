SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_ratings.averageRating, 
title_principals.characters
FROM 
title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN title_principals ON title_ratings.tconst = title_principals.tconst 
WHERE 
title_basics.titleType ='movie' 
AND title_basics.startYear = 2018 
AND title_basics.primaryTitle = 'Avengers: Infinity War'
AND NOT EXISTS (
  SELECT 
  1 
  FROM 
   title_principals 
  WHERE 
   title_principals.nconst = ANY (
    SELECT 
     nconst 
    FROM 
     title_basics 
    WHERE 
     title_basics.tconst = title_ratings.tconst 
   )
)
AND (
  SELECT 
  1 
  FROM 
   title_principals 
  WHERE 
   title_principals.nconst = ANY (
    SELECT 
     nconst 
    FROM 
     title_basics 
    WHERE 
     title_basics.tconst = title_ratings.tconst 
   )
  AND title_principals.category = 'actor'
  AND title_principals.job = 'Iron Man'
)
LIMIT 10