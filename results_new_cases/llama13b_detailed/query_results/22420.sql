SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_crew.directors, 
title_principals.category, 
title_principals.job, 
title_ratings.averageRating 
FROM 
title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE 
title_basics.primaryTitle LIKE '%Comedy%' 
AND title_basics.startYear > 2000 
AND title_ratings.averageRating > 6.5 
AND title_principals.category IN ('actor', 'writer') 
AND NOT title_principals.job LIKE '%Director%' 
AND NOT title_crew.directors LIKE '%Will Ferrell%' 
AND NOT title_crew.writers LIKE '%Adam McKay%' 
AND title_basics.isAdult = 0 
AND title_basics.endYear IS NULL 
ORDER BY 
title_ratings.averageRating DESC, title_basics.primaryTitle ASC