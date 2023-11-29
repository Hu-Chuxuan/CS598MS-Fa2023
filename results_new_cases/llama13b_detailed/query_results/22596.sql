SELECT 
title_basics.title,
title_basics.primaryTitle,
title_basics.genres,
title_crew.directors,
title_principals.characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%Documentary%'
AND title_principals.category = 'actor'
AND title_principals.job ='self'
AND title_crew.directors = 'nm1588970'
AND title_basics.startYear = '1981'
AND title_basics.endYear = '1986'
AND title_basics.runtimeMinutes > 60
ORDER BY title_basics.primaryTitle, title_principals.characters