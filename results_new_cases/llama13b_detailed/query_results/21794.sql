SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Drama%'
AND t.startYear = 1999
AND n.primaryProfession LIKE '%Actor%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = t.tconst AND tp.category = 'actor' AND tp.job LIKE '%Fight Club%'
)
ORDER BY tr.averageRating DESC