SELECT 
title_basics.titleType, 
title_basics.primaryTitle, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_crew.directors, 
title_principals.characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle = 'The Silence of the Hams'
AND title_basics.startYear = 1994
AND (
    title_basics.genres LIKE '%Animation%'
    OR title_basics.genres LIKE '%Comedy%'
    OR title_basics.genres LIKE '%Family%'
)
AND title_crew.directors LIKE '%Fellini%'
AND title_principals.characters LIKE '%Ham%'
ORDER BY title_basics.runtimeMinutes DESC, title_principals.characters ASC
LIMIT 5