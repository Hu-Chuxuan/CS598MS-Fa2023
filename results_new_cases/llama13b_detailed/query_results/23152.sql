SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie'
AND t.genres LIKE '%Action%'
AND t.startYear = 2013
AND t.runtimeMinutes > 90
AND n.primaryProfession LIKE '%Actor%'
AND n.knownForTitles LIKE '%The Purge%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = t.tconst AND tp.category = 'actor' AND tp.job = 'Blacksmith'
)
AND NOT EXISTS (
  SELECT 1 FROM title_crew tc
  WHERE tc.tconst = t.tconst AND tc.directors LIKE '%Jim Carrey%'
)
ORDER BY t.averageRating DESC, t.numVotes DESC
LIMIT 5