SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Comedy%' AND t.genres LIKE '%Romance%' AND n.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = t.tconst AND tp.category = 'actor' AND tp.job LIKE '%Will Ferrell%'
)
ORDER BY averageRating DESC, numVotes DESC