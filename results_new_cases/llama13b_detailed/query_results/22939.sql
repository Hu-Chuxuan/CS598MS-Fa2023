SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Action%' AND t.genres LIKE '%War%'
AND n.primaryProfession LIKE '%Actor%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  JOIN name_basics nb ON tp.nconst = nb.nconst
  WHERE nb.primaryName = 'Tom Hanks'
)
ORDER BY averageRating DESC