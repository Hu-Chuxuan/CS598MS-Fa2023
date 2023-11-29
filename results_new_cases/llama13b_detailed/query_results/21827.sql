SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_crew.directors, 
title_crew.writers, 
title_principals.characters, 
title_ratings.averageRating, 
title_ratings.numVotes
FROM 
title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
title_basics.primaryTitle LIKE '%Hangover%' OR 
title_basics.primaryTitle LIKE '%Girls Trip%'
AND title_ratings.averageRating > 5
AND title_ratings.numVotes > 1000
AND title_principals.category = 'actor'
AND title_crew.directors = 'nm0005690'
AND title_crew.writers = 'nm0085156'
ORDER BY 
title_ratings.averageRating DESC