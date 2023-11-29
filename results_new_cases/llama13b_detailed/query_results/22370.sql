SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0
AND nb.primaryProfession LIKE '%actor%'
AND EXISTS (
  SELECT 1 FROM title_crew tc
  WHERE tc.tconst = tb.tconst AND tc.directors LIKE '%Tim%Burton%'
)
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job LIKE '%Johnny%Depp%'
)
ORDER BY tr.averageRating DESC
LIMIT 5