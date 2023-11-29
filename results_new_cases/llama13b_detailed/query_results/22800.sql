SELECT 
title_basics.titleType, title_basics.primaryTitle, title_basics.runtimeMinutes, 
title_crew.directors, title_crew.writers, 
title_principals.category, title_principals.job, title_principals.characters
FROM 
title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
title_basics.titleType ='movie' AND 
title_basics.startYear >= 1980 AND 
title_basics.endYear <= 1989 AND 
title_basics.genres LIKE '%Horror%' AND 
title_crew.directors = 'nm0005690' AND 
title_principals.category = 'director' AND 
title_principals.job = 'director of photography'
ORDER BY 
title_basics.primaryTitle