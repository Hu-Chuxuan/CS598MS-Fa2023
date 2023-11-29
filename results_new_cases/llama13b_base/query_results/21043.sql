SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_basics.originalTitle, 
title_basics.isAdult, 
title_basics.startYear, 
title_basics.endYear, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_ratings.averageRating, 
title_ratings.numVotes, 
name_basics.primaryName, 
name_basics.birthYear, 
name_basics.deathYear, 
name_basics.primaryProfession, 
name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE title_basics.genres = 'Comedy'
AND title_ratings.averageRating > 7
AND title_basics.startYear = 2018
AND title_basics.endYear = 2018
AND name_basics.primaryName LIKE '%Jennifer%'
AND NOT EXISTS (
  SELECT 1 
  FROM title_principals 
  WHERE title_principals.tconst = title_basics.tconst 
  AND title_principals.category = 'Actress'
  AND title_principals.job = 'Lead'
  AND title_principals.characters LIKE '%Jennifer Lawrence%'
)
ORDER BY title_ratings.averageRating DESC