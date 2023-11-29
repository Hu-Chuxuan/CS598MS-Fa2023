SELECT 
title_basics.title, 
title_ratings.averageRating, 
title_crew.directors, 
title_principals.characters 
FROM 
title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
title_basics.genres = 'action' 
AND title_ratings.numVotes > 1000 
AND title_crew.directors LIKE '%Pixar%' 
AND title_principals.characters LIKE '%animated%' 
AND title_basics.startYear >= 2000 
AND title_basics.endYear <= 2020 
AND title_basics.runtimeMinutes >= 90 
AND title_basics.runtimeMinutes <= 120 
AND title_ratings.averageRating >= 7 
AND title_ratings.averageRating <= 9 
AND title_principals.job LIKE '%voice_actor%' 
AND title_principals.category LIKE '%animation%' 
AND title_basics.primaryTitle LIKE '%The Incredibles%' 
AND title_basics.primaryTitle LIKE '%Finding Dory%' 
AND title_basics.primaryTitle LIKE '%Coco%' 
ORDER BY 
title_ratings.averageRating DESC, title_basics.primaryTitle ASC