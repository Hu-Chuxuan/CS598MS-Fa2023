SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > 7 AND title_basics.genres LIKE '%War%'
AND NOT EXISTS (
  SELECT * FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst AND title_principals.category = 'actor'
  AND title_principals.characters NOT LIKE '%War%'
)
ORDER BY title_ratings.averageRating DESC, title_basics.startYear ASC
LIMIT 10