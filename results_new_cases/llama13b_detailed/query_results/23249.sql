SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.runtimeMinutes, 
title_principals.characters, 
title_ratings.averageRating, 
title_ratings.numVotes
FROM title_basics 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.primaryTitle LIKE '%Bob%' 
AND title_basics.startYear = 1991 
AND title_principals.category = 'actor' 
AND title_ratings.averageRating > 6 
AND title_ratings.numVotes > 1000 
AND title_basics.genres LIKE '%Comedy%' 
AND title_basics.genres LIKE '%Horror%'

ORDER BY title_ratings.averageRating DESC, title_ratings.numVotes DESC