SELECT title_basics.title, title_basics.primaryTitle, name_basics.primaryName, title_ratings.averageRating, title_crew.directors, title_principals.category, title_principals.job
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Comedy'
AND title_ratings.averageRating > 7
AND title_basics.startYear = 2008
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE title_ratings.tconst = title_basics.tconst
  AND title_ratings.numVotes > 1000
)
AND title_basics.primaryTitle NOT IN (
  SELECT primaryTitle
  FROM title_basics
  WHERE startYear < 2008
)
AND title_basics.primaryTitle NOT IN (
  SELECT primaryTitle
  FROM title_basics
  WHERE endYear > 2008
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst
  AND title_principals.job = 'Actor'
  AND title_principals.characters = 'Danny McBride'
)
LIMIT 10