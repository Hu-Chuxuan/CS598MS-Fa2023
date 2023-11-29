SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.genres, 
title_crew.directors, title_crew.writers, 
title_principals.characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle LIKE '%Danny Devito%'
AND title_principals.category = 'actor'
AND title_principals.job LIKE '%Danny Devito%'
AND title_crew.directors LIKE '%Billy Wilder%'
AND title_crew.writers LIKE '%Billy Wilder%'
AND title_principals.characters LIKE '%Norma Desmond%'
ORDER BY title_basics.startYear DESC