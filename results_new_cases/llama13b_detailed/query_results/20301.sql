SELECT 
title_basics.tconst, title_basics.primaryTitle, title_basics.genres, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_crew.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%Crime%' AND title_basics.primaryTitle LIKE '%Gangsters%'
AND title_principals.category IN ('actor', 'writer')
AND title_crew.directors IN (SELECT nconst FROM name_basics WHERE primaryName LIKE '%Scorsese%')
GROUP BY title_basics.tconst, title_basics.primaryTitle, title_basics.genres, title_crew.directors, title_principals.characters
HAVING COUNT(DISTINCT title_principals.characters) > 2
ORDER BY title_basics.primaryTitle, title_principals.characters