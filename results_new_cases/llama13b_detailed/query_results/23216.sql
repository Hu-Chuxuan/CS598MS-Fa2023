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
title_basics.titleType IN ('movie','short') 
AND title_basics.isAdult = 0 
AND title_crew.directors IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'director') 
AND title_principals.characters IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'actor') 
AND title_ratings.averageRating > 6 
AND title_ratings.numVotes > 100 
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE category = 'actor' AND job = 'blacksmith') 
AND NOT EXISTS (SELECT 1 FROM title_crew WHERE job = 'director of photography') 
AND title_basics.startYear > 2000 
AND title_basics.endYear < 2020 
AND title_basics.runtimeMinutes > 60 
AND title_basics.genres LIKE '%Animation%' 
AND title_basics.genres LIKE '%Comedy%' 
AND title_basics.genres LIKE '%Adventure%' 
AND title_basics.primaryTitle NOT LIKE '%(2017)%' 
AND title_basics.primaryTitle NOT LIKE '%(2004)%'