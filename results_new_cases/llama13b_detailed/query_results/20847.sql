SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_basics.genres, 
title_crew.directors, 
title_crew.writers, 
title_principals.characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle = 'Up (2009)'
AND title_basics.genres LIKE '%Animation%'