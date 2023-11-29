SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%'
AND nb.primaryProfession LIKE '%Actor%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.nconst = nb.nconst
  AND tp.category = 'actor'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.nconst = nb.nconst
  AND tp.category = 'director'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.nconst = nb.nconst
  AND tp.category = 'writer'
)
AND tr.averageRating > (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE tconst = tb.tconst
)
AND tr.numVotes > 100
ORDER BY tr.averageRating DESC