SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_basics.originalTitle, 
title_basics.genres, 
title_ratings.averageRating, 
title_principals.category, 
title_principals.job, 
name_basics.primaryName

FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
INNER JOIN name_basics ON title_basics.tconst = name_basics.tconst
INNER JOIN title_principals ON title_basics.tconst = title_principals.tconst

WHERE title_basics.title LIKE '%Seven%' AND 
title_ratings.averageRating > 7 AND 
title_principals.category = 'Animation' AND 
title_principals.job = 'Director'

GROUP BY title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.genres, title_ratings.averageRating, title_principals.category, title_principals.job, name_basics.primaryName

HAVING COUNT(DISTINCT title_principals.job) > 1 AND 
COUNT(DISTINCT title_principals.category) > 1

ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC