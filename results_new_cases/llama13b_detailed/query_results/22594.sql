SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror' AND tb.startYear < 2010
AND nb.primaryProfession LIKE '%Actor'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job LIKE '%Ghost'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job LIKE '%War'
)
ORDER BY tr.averageRating DESC