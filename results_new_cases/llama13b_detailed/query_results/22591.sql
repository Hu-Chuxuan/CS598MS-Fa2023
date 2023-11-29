SELECT
title_basics.title,
title_basics.primaryTitle,
title_basics.genres,
title_crew.directors,
title_principals.characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%Musical%'
AND title_crew.directors IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'director')
AND title_principals.characters NOT LIKE '%[Director]%'
AND title_basics.startYear >= 2010
AND title_basics.endYear <= 2020
AND title_ratings.averageRating > 6.5
AND title_ratings.numVotes > 1000
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE title_basics.tconst = title_ratings.tconst AND title_basics.primaryTitle = title_ratings.title AND title_basics.genres LIKE '%Musical%')
ORDER BY title_basics.primaryTitle, title_principals.characters