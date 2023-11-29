SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%War%' OR tb.genres LIKE '%Action%'
AND nb.primaryProfession LIKE '%Actor%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'director'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'writer'
)
AND NOT EXISTS (
  SELECT 1 FROM title_crew tc
  WHERE tc.tconst = tb.tconst AND tc.directors LIKE '%Fred Astaire%'
)
AND NOT EXISTS (
  SELECT 1 FROM title_crew tc
  WHERE tc.tconst = tb.tconst AND tc.writers LIKE '%Joss Whedon%'
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5