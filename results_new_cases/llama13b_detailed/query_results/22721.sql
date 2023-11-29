SELECT 
title_basics.titleType, title_basics.primaryTitle, title_basics.runtimeMinutes, title_crew.directors, title_principals.characters
FROM 
title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.primaryTitle LIKE '%Frozen%'
AND title_crew.directors LIKE '%Christopher% Babbit%'
AND title_principals.category = 'actor'
AND title_principals.job LIKE '%voice% actor%'
AND title_principals.characters LIKE '%Elsa%'
ORDER BY 
title_basics.runtimeMinutes DESC