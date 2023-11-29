SELECT 
title_basics.titleType,
title_basics.primaryTitle,
title_basics.runtimeMinutes,
title_basics.genres,
title_crew.directors,
title_crew.writers,
title_principals.characters
FROM 
title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.titleType ='movie' AND 
title_basics.primaryTitle LIKE '%Disney%' AND 
title_basics.startYear >= 1980 AND 
title_basics.endYear <= 1995 AND 
title_crew.directors LIKE '%Don%Bluth%' OR 
title_crew.writers LIKE '%Don%Bluth%' OR 
title_principals.characters LIKE '%animated%'