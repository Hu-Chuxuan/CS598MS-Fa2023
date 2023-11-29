SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Romance%'
AND nb.primaryProfession LIKE '%Actor%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.nconst = nb.nconst AND tp.category = 'actor'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.nconst = nb.nconst AND tp.category = 'writer'
)
AND tr.averageRating > (
  SELECT AVG(tr2.averageRating)
  FROM title_ratings tr2
  WHERE tr2.tconst = tb.tconst
)
AND tr.numVotes > (
  SELECT COUNT(tr2.nconst)
  FROM title_ratings tr2
  WHERE tr2.tconst = tb.tconst
)
AND tb.startYear <= '2022'
AND tb.endYear >= '2000'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10