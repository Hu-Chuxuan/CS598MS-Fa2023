SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_crew.directors, 
title_principals.characters, 
title_ratings.averageRating
FROM 
title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
title_basics.titleType ='movie' 
AND title_basics.primaryTitle LIKE '%Ring%' 
AND title_crew.directors LIKE '%Peter%Jackson%' 
AND title_principals.characters LIKE '%hobbit%' 
AND title_ratings.averageRating > 7
ORDER BY 
title_ratings.averageRating DESC