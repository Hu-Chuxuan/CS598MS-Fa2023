SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Horror%'
AND nb.primaryProfession LIKE '%Actor%'
AND tr.averageRating > 7
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'Fred Astaire'
)
LIMIT 5

EXPLAIN SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Horror%'
AND nb.primaryProfession LIKE '%Actor%'
AND tr.averageRating > 7
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'Fred Astaire'
)
LIMIT 5