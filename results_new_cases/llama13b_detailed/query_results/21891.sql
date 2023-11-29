SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_crew.directors, 
title_principals.characters
FROM 
title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_crew.tconst = title_principals.tconst 
WHERE 
title_basics.titleType ='movie' 
AND title_basics.startYear > DATE_SUB(CURDATE(), INTERVAL 1 YEAR) 
AND title_basics.genres LIKE '%Animation%' 
AND title_principals.category = 'actor' 
AND title_principals.job LIKE '%voice%' 
AND title_ratings.averageRating > 6 
AND title_ratings.numVotes > 1000

ORDER BY 
title_ratings.averageRating DESC, title_principals.characters ASC