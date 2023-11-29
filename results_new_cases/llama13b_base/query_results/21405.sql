SELECT 
title_basics.title, 
title_ratings.averageRating, 
name_basics.primaryName, 
title_crew.directors, 
title_principals.characters 
FROM 
title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryTitle 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
title_basics.genres LIKE '%crime%' 
AND title_ratings.numVotes > 1000 
AND name_basics.primaryProfession = 'Director' 
AND title_crew.directors IN (SELECT nconst FROM name_basics WHERE primaryName = 'Orson Welles') 
AND title_principals.characters IN (SELECT nconst FROM name_basics WHERE primaryName = 'Humphrey Bogart') 
AND NOT EXISTS (SELECT 1 FROM title_ratings WHERE tconst = title_basics.tconst AND averageRating > 8) 
ORDER BY 
title_ratings.averageRating DESC