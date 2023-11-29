SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0
AND tr.averageRating > 6.5
AND nb.primaryProfession LIKE '%actor%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor'
  AND tp.job LIKE '%scary%'
)
ORDER BY tr.averageRating DESC