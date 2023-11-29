SELECT 
title_basics.titleType,
title_basics.primaryTitle,
title_crew.directors,
title_principals.characters
FROM 
title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
title_basics.titleType ='movie' 
AND title_basics.primaryTitle = 'Nocturnal Animals (2016)' 
AND title_crew.directors = 'nm0005690' 
AND title_principals.characters!= '[''Assistant''']' 
AND title_principals.characters!= '[''Blacksmith''']' 
AND title_basics.genres LIKE '%Animation%' 
AND title_basics.genres LIKE '%Comedy%' 
AND title_basics.genres LIKE '%Drama%' 
AND title_basics.runtimeMinutes > 60 
AND title_basics.startYear = 2010 
AND title_basics.endYear = 2020 
AND title_ratings.averageRating > 6.5 
AND title_ratings.numVotes > 1000 
ORDER BY 
title_ratings.averageRating DESC