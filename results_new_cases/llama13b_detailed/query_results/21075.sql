SELECT 
title_basics.tconst, title_basics.titleType, title_basics.primaryTitle, title_basics.originalTitle, title_basics.runtimeMinutes, 
title_crew.directors, title_crew.writers, title_principals.category, title_principals.job, title_principals.characters, 
title_ratings.averageRating, title_ratings.numVotes
FROM 
title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
title_basics.primaryTitle LIKE '%family%' AND 
title_basics.titleType NOT IN ('short', 'tvepisode') AND 
title_crew.directors = 'nm0005690' AND 
title_principals.category = 'director' AND 
title_ratings.averageRating > 5.5 AND 
title_ratings.numVotes > 1000
ORDER BY 
title_ratings.averageRating DESC