SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Comedy%'
AND n.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  JOIN name_basics nb ON tp.nconst = nb.nconst
  WHERE tp.category = 'actor' AND nb.primaryName = 'Fred Astaire'
)
ORDER BY averageRating DESC, numVotes DESC