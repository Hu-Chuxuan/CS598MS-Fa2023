SELECT 
title_basics.tconst,
title_basics.primaryTitle,
title_basics.genres,
title_crew.directors,
title_principals.characters
FROM
title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE
title_basics.primaryTitle LIKE '%Comedy%'
AND title_basics.startYear >= 2000
AND title_basics.endYear <= 2020
AND title_crew.directors IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'director')
AND title_principals.characters NOT LIKE '%[director]%'
AND title_principals.category NOT IN ('self', 'producer')
AND title_ratings.averageRating > 6
AND title_ratings.numVotes > 1000
AND NOT EXISTS (
SELECT 1 FROM title_ratings
WHERE title_ratings.tconst = title_basics.tconst
AND title_ratings.averageRating < 6
)
ORDER BY
title_basics.primaryTitle, title_principals.characters