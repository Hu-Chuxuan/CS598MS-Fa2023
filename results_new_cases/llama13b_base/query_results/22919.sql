SELECT t.*, n.*, c.*, w.*
FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.title
JOIN title_crew c ON t.directors = c.director
JOIN title_principals w ON t.ordering = w.job
WHERE t.genres = 'Science Fiction'
AND t.startYear BETWEEN 1970 AND 1989
AND t.runtimeMinutes > 90
AND n.birthYear BETWEEN 1950 AND 1970
AND EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE t.tconst = title_ratings.tconst
  AND title_ratings.averageRating > 7
  AND title_ratings.numVotes > 1000
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE w.nconst = title_principals.nconst
  AND title_principals.category = 'Actor'
  AND title_principals.job = 'Director'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE t.tconst = title_ratings.tconst
  AND title_ratings.averageRating < 5
)
ORDER BY w.job, t.primaryTitle