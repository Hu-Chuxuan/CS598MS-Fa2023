SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_crew.directors, 
title_principals.category, 
title_principals.job, 
title_principals.characters

FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst

WHERE title_basics.titleType ='movie'
AND title_basics.primaryTitle NOT IN ('Dunkirk', 'Saving Private Ryan')
AND title_principals.category NOT IN ('self', 'director', 'cinematographer', 'composer', 'editor', 'actor', 'producer')

GROUP BY title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_crew.directors, 
title_principals.category, 
title_principals.job, 
title_principals.characters

HAVING COUNT(DISTINCT title_principals.category) >= 3
AND COUNT(DISTINCT title_principals.job) >= 3
AND COUNT(DISTINCT title_principals.characters) >= 3

ORDER BY title_basics.primaryTitle ASC