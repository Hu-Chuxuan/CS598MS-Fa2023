SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.genres, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM 
title_basics 
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.title LIKE '%The Notebook%' AND 
title_basics.genres LIKE '%Romance%' AND 
title_basics.startYear = 2004 AND 
NOT EXISTS (
  SELECT 
  1
  FROM 
   title_ratings
  WHERE 
   title_ratings.tconst = title_basics.tconst
   AND title_ratings.averageRating < 7
)
AND title_basics.tconst NOT IN (
  SELECT 
   tconst
  FROM 
   title_ratings
  WHERE 
   title_ratings.averageRating < 7
)
AND name_basics.primaryName NOT IN (
  SELECT 
   primaryName
  FROM 
   name_basics
  WHERE 
   birthYear > 1980
)
AND title_crew.directors NOT IN (
  SELECT 
   directors
  FROM 
   title_crew
  WHERE 
   directors LIKE '%Christopher Nolan%'
)
AND title_principals.characters NOT IN (
  SELECT 
   characters
  FROM 
   title_principals
  WHERE 
   characters LIKE '%Leonardo DiCaprio%'
)
ORDER BY 
title_basics.startYear DESC, title_basics.primaryTitle ASC