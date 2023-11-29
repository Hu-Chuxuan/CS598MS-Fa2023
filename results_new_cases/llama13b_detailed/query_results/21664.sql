SELECT 
title_basics.titleType,
title_basics.primaryTitle,
title_crew.directors,
title_principals.category,
title_principals.job,
title_ratings.averageRating

FROM 
title_basics

JOIN title_crew ON title_basics.tconst = title_crew.tconst

JOIN title_principals ON title_basics.tconst = title_principals.tconst

JOIN title_ratings ON title_basics.tconst = title_ratings.tconst

WHERE 
title_basics.titleType ='movie'
AND title_basics.primaryTitle LIKE '%Robot Apocalypse%'
AND title_ratings.averageRating > 6

GROUP BY 
title_basics.titleType,
title_basics.primaryTitle,
title_crew.directors,
title_principals.category,
title_principals.job

HAVING 
COUNT(DISTINCT title_principals.category) > 1

ORDER BY 
title_ratings.averageRating DESC, title_basics.primaryTitle ASC