SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.runtimeMinutes, 
title_crew.directors, 
title_principals.category, 
title_principals.job, 
title_ratings.averageRating, 
title_ratings.numVotes
FROM 
title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
title_basics.titleType ='movie' AND 
title_basics.primaryTitle LIKE '%romantic comedy%' AND 
title_basics.runtimeMinutes > 80 AND 
title_crew.directors LIKE '%Rob% Reiner%' AND 
title_principals.category LIKE '%actor%' AND 
title_principals.job LIKE '%Morgan% Freeman%' AND 
title_ratings.averageRating > 7 AND 
title_ratings.numVotes > 1000
ORDER BY 
title_ratings.averageRating DESC, title_ratings.numVotes DESC