SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_ratings.averageRating, 
name_basics.primaryName, 
title_crew.directors, 
title_principals.characters

FROM 
title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst

WHERE 
title_basics.genres LIKE '%horror'
AND title_ratings.numVotes > 1000
AND name_basics.primaryProfession NOT LIKE 'Actress'
AND title_crew.directors NOT LIKE 'Peter Jackson'
AND title_principals.job NOT LIKE 'Actor'

GROUP BY 
title_basics.title, 
title_basics.primaryTitle, 
title_ratings.averageRating, 
name_basics.primaryName, 
title_crew.directors, 
title_principals.characters

HAVING 
COUNT(DISTINCT title_basics.tconst) > 5

ORDER BY 
title_ratings.averageRating DESC, 
title_basics.primaryTitle ASC