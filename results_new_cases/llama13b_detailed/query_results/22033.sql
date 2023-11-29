SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.startYear = 1994
AND nb.primaryProfession IN ('actor', 'writer')
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'Fred Astaire'
)
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'writer' AND tp.job = 'Quentin Tarantino'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'John Travolta'
)
LIMIT 5