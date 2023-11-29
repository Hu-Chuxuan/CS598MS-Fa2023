SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_ratings.nconst = name_basics.nconst
WHERE title_basics.titleType ='movie'
AND title_ratings.averageRating > 7
AND name_basics.primaryProfession IN ('actor', 'writer')
AND EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_principals.nconst = name_basics.nconst
  AND title_principals.category = 'actor'
)
AND EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_principals.nconst = name_basics.nconst
  AND title_principals.category = 'writer'
)
AND title_basics.genres LIKE '%drama%'