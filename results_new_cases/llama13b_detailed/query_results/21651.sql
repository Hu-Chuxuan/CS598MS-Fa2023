SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > 5 AND title_basics.genres LIKE '%Comedy%'
AND NOT EXISTS (
  SELECT * FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst AND title_principals.category = 'actor'
)
LIMIT 5