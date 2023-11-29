SELECT t.title_basics.primaryTitle, t.title_basics.startYear, t.title_basics.runtimeMinutes, t.title_ratings.averageRating, t.title_crew.directors, t.title_principals.characters
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryName = n.primaryName
JOIN title_crew c ON t.directors = c.directors
JOIN title_principals p ON t.ordering = p.ordering
WHERE t.genres LIKE '%doctor%'
AND t.startYear BETWEEN 2000 AND 2020
AND t.runtimeMinutes > 90
AND EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE tconst = tr.tconst
  AND numVotes > 10000
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE tconst = p.tconst
  AND category = 'actress'
)
ORDER BY averageRating DESC, startYear DESC