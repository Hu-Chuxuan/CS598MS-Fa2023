SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%comedy%'
AND title_ratings.numVotes > 1000
AND title_crew.directors LIKE '%Kevin Hart%'
AND title_principals.characters LIKE '%Tiffany Haddish%'
AND NOT EXISTS (
  SELECT 1
  FROM title_basics
  WHERE title_basics.tconst = title_principals.tconst AND title_basics.primaryTitle = title_principals.primaryTitle
  AND title_basics.startYear = title_principals.startYear
  AND title_basics.endYear = title_principals.endYear
)
ORDER BY title_ratings.averageRating DESC