SELECT 
title_basics.titleType,
title_basics.primaryTitle,
title_ratings.averageRating,
title_principals.characters
FROM 
title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_ratings.tconst = title_principals.tconst
WHERE 
title_basics.primaryTitle LIKE '%Comedy%'
AND title_ratings.averageRating > 6
AND title_principals.category = 'actor'
AND title_principals.job LIKE '%singing%'
AND title_principals.characters LIKE '%female%'