SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_ratings.averageRating, 
title_principals.category, 
title_principals.job, 
title_crew.directors, 
title_crew.writers
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
JOIN title_crew ON title_principals.category = title_crew.category 
WHERE title_basics.genres LIKE '%zombie%' 
AND title_ratings.numVotes > 1000 
AND title_principals.job = 'Actor' 
AND title_crew.directors LIKE '%Danny Boyle%' 
AND title_crew.writers LIKE '%Alex Garland%' 
AND NOT EXISTS ( 
  SELECT 1 
  FROM title_basics 
  WHERE title_basics.tconst = title_principals.tconst 
  AND title_basics.primaryTitle = name_basics.primaryName 
  AND title_basics.genres NOT LIKE '%zombie%' 
) 
GROUP BY title_basics.title, title_basics.primaryTitle 
HAVING AVG(title_ratings.averageRating) > (SELECT AVG(title_ratings.averageRating) FROM title_ratings WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE genres LIKE '%zombie%')) 
ORDER BY AVG(title_ratings.averageRating) DESC, title_basics.primaryTitle ASC