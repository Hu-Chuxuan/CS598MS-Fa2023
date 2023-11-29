SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%Horror' AND title_basics.genres LIKE '%Comedy'
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE title_ratings.tconst = title_basics.tconst AND title_ratings.numVotes > 1000
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst AND title_principals.job = 'Actor'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_crew
  WHERE title_crew.tconst = title_basics.tconst AND title_crew.job = 'Director'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE title_ratings.tconst = title_basics.tconst AND title_ratings.averageRating > 7
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst AND title_principals.characters LIKE '%Jigsaw%'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_crew
  WHERE title_crew.tconst = title_basics.tconst AND title_crew.directors LIKE '%James Wan%'
)
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC
LIMIT 5