SELECT 
title_basics.primaryTitle,
title_basics.genres,
title_ratings.averageRating
FROM
title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.primaryName
WHERE
title_basics.genres LIKE '%Action%'
AND title_basics.startYear = 2000
AND title_ratings.numVotes > 10000
AND NOT EXISTS (
  SELECT 1 FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst AND title_principals.category = 'Actress'
  AND title_principals.job = 'Lead'
  AND title_principals.characters = 'Trinity'
)

