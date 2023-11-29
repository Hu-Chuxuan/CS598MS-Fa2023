SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.runtimeMinutes, 
title_crew.directors, 
title_principals.characters
FROM 
title_basics
INNER JOIN title_crew ON title_basics.tconst = title_crew.tconst
INNER JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.titleType ='movie'
AND title_basics.primaryTitle NOT IN ('The Terminator (1984)')
AND title_crew.directors NOT IN ('James Cameron')
AND title_principals.characters NOT IN ('["]Assistant["]')
AND title_principals.job = 'actor'
AND title_ratings.averageRating > 6.5
AND title_ratings.numVotes > 100
ORDER BY 
title_ratings.averageRating DESC