SELECT title_basics.title, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.title LIKE '%Dumber%' OR title_basics.title LIKE '%Superbad%'
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE title_ratings.tconst = title_basics.tconst AND title_ratings.averageRating > 7
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst AND title_principals.characters LIKE '%Star Wars%'
)
ORDER BY title_ratings.averageRating DESC