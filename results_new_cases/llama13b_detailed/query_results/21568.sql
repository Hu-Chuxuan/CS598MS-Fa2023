SELECT 
title_basics.tconst, title_basics.primaryTitle, title_basics.genres, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_crew.tconst = title_principals.tconst
WHERE title_basics.primaryTitle LIKE '%Sense%'
AND title_basics.genres LIKE '%Horror%'
AND title_principals.category = 'actor'
AND title_principals.job = 'Bruce Willis'
AND title_crew.directors LIKE '%M. Night Shyamalan%'
LIMIT 5