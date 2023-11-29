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
title_basics.titleType ='movie' AND 
title_basics.isAdult = 0 AND 
title_crew.directors LIKE '%comedy%' AND 
title_principals.characters LIKE '%comedy%'
ORDER BY 
title_principals.characters