SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Fantasy%'
AND nb.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.nconst = nb.nconst AND tp.category = 'actor'
)
AND tr.averageRating > (
  SELECT AVG(tr2.averageRating)
  FROM title_ratings tr2
  WHERE tr2.tconst = tb.tconst
)
ORDER BY tr.averageRating DESC