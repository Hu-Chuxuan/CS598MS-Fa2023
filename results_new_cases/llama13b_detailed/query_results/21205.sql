SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Comedy%' AND t.startYear > 2000
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.nconst = n.nconst AND tp.category = 'actor'
)
AND t.runtimeMinutes < 180
AND NOT EXISTS (
  SELECT 1 FROM title_crew tc
  WHERE tc.tconst = t.tconst AND tc.directors = 'nm0005690'
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5