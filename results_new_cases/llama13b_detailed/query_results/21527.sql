SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.startYear, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_crew.directors, 
title_principals.category, 
title_principals.job, 
title_principals.characters
FROM 
title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.titleType ='movie' AND 
title_basics.primaryTitle LIKE '%female-oriented drama%' AND 
title_basics.genres LIKE '%Drama%' AND 
title_crew.directors LIKE '%female%' AND 
title_principals.category LIKE '%actor%' AND 
title_principals.job LIKE '%lead%' AND 
title_principals.characters LIKE '%female%'
ORDER BY 
title_basics.startYear DESC, 
title_basics.primaryTitle ASC