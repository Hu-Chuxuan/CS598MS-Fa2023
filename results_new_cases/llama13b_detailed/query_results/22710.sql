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
title_basics.titleType IN ('movie','short', 'animated')
AND title_basics.primaryTitle LIKE '%comedy%'
AND title_principals.category = 'actor'
AND title_principals.job LIKE '%voice%'
AND title_crew.directors LIKE '%Female%'
AND title_ratings.averageRating > 6
AND title_ratings.numVotes > 1000
AND title_basics.isAdult = 0

ORDER BY 
title_ratings.averageRating DESC, title_principals.characters ASC