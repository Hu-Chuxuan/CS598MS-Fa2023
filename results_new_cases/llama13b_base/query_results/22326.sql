SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_basics.originalTitle, 
title_basics.isAdult, 
title_basics.startYear, 
title_basics.endYear, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_ratings.averageRating, 
title_ratings.numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.primaryName
JOIN title_crew ON title_basics.directors = title_crew.directors
JOIN title_principals ON title_basics.ordering = title_principals.ordering
WHERE title_basics.primaryTitle IN ('Fast 8', 'The Terminator (1984)')
AND title_ratings.averageRating > 7
AND title_basics.genres LIKE '%Action%'
AND title_principals.category = 'Actor'
AND title_principals.job = 'Lead'
AND title_principals.characters LIKE '%action%'
GROUP BY title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres
HAVING COUNT(title_principals.ordering) > 5
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC