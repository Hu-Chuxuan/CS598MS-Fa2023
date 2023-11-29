SELECT 
title_basics.title_id,
title_basics.title,
title_basics.primaryTitle,
title_basics.originalTitle,
title_basics.isAdult,
title_basics.startYear,
title_basics.endYear,
title_basics.runtimeMinutes,
title_basics.genres,
title_ratings.averageRating,
title_ratings.numVotes

FROM title_basics
JOIN title_ratings ON title_basics.title_id = title_ratings.title_id
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
JOIN title_crew ON title_basics.title_id = title_crew.title_id
JOIN title_principals ON title_basics.title_id = title_principals.title_id

WHERE title_basics.primaryTitle LIKE '%The Purge%'
AND title_ratings.averageRating > 6
AND title_principals.category = 'actors'
AND title_principals.job = 'director'
AND title_principals.characters = 'Frank Grillo'

GROUP BY title_basics.title_id
HAVING COUNT(title_principals.job) > 1
ORDER BY title_ratings.averageRating DESC