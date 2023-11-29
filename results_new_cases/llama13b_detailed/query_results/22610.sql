SELECT 
title_basics.titleType,
title_basics.primaryTitle,
title_basics.runtimeMinutes,
title_basics.genres,
title_crew.directors,
title_crew.writers,
title_principals.category,
title_principals.job,
title_principals.characters

FROM 
title_basics

JOIN title_crew ON title_basics.tconst = title_crew.tconst

JOIN title_principals ON title_basics.tconst = title_principals.tconst

WHERE 
title_basics.titleType ='movie'
AND title_basics.primaryTitle LIKE '%dark comedy%'
AND title_crew.directors LIKE '%the Coen brothers%'
AND title_principals.category LIKE '%writer%'

GROUP BY 
title_basics.tconst

HAVING 
COUNT(title_principals.category) > 1

ORDER BY 
title_basics.primaryTitle ASC