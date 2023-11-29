SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Romance%'
AND nb.primaryProfession LIKE '%Actor%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor'
  AND tp.job LIKE '%Astaire, Fred%'
)
ORDER BY tr.averageRating DESC, tb.startYear DESC