SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.isAdult = 0 AND t.genres LIKE '%Comedy%'
AND n.primaryProfession LIKE '%Actor%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = t.tconst AND tp.category = 'actor'
  AND tp.job LIKE '%Romancing the Stone%'
)
ORDER BY tr.averageRating DESC