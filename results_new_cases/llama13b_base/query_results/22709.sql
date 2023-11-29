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
title_basics.genres LIKE '%comedy%' 
AND title_ratings.numVotes > 10000 
AND title_crew.directors LIKE '%Jay Roach%' 
AND title_principals.characters LIKE '%Eli Roth%' 

GROUP BY 
title_basics.title 
HAVING 
AVG(title_ratings.averageRating) > 7 

ORDER BY 
AVG(title_ratings.averageRating) DESC