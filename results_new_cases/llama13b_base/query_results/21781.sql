SELECT 
title_basics.title, 
title_ratings.averageRating, 
name_basics.primaryName, 
title_crew.directors, 
title_principals.characters
FROM 
title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.primaryTitle LIKE '%Bill Murray%'
AND title_ratings.numVotes > 1000
AND name_basics.birthYear > 1960
AND title_crew.directors LIKE '%Judd Apatow%'
AND title_principals.category = 'actor'
AND title_principals.job = 'lead'
AND title_principals.characters LIKE '%comedy%'

