SELECT 
title_basics.title, 
title_ratings.averageRating, 
name_basics.primaryName, 
title_crew.directors, 
title_principals.category
FROM 
title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN name_basics ON title_basics.tconst = name_basics.tconst 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
title_basics.title LIKE '%Game Night%' 
AND title_ratings.averageRating > 7 
AND name_basics.primaryName NOT IN ('Zootopia', 'The Incredibles (2004)', 'Wreck-It Ralph (2012)') 
GROUP BY 
title_basics.title, 
title_ratings.averageRating, 
name_basics.primaryName, 
title_crew.directors, 
title_principals.category
HAVING 
COUNT(DISTINCT title_basics.tconst) > 10