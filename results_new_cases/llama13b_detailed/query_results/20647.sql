SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Action%'
AND nb.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'blacksmith'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'assistant'
)
ORDER BY tr.averageRating DESC, tb.startYear DESC