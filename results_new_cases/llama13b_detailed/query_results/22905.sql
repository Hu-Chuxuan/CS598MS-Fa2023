SELECT * FROM title_basics tb
INNER JOIN title_crew tc ON tb.tconst = tc.tconst
INNER JOIN title_principals tp ON tc.tconst = tp.tconst
INNER JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Monster%'
AND tb.startYear >= 2000
AND tb.endYear <= 2020
AND EXISTS (
  SELECT 1 FROM title_ratings tr
  WHERE tr.tconst = tb.tconst
  AND tr.averageRating > 6
)
AND NOT EXISTS (
  SELECT 1 FROM title_ratings tr
  WHERE tr.tconst = tb.tconst
  AND tr.averageRating < 3
)
AND NOT EXISTS (
  SELECT 1 FROM name_basics nb
  WHERE nb.nconst = tp.nconst
  AND nb.primaryProfession = 'actor'
  AND nb.knownForTitles = 'tt0053137'
)
ORDER BY tb.runtimeMinutes DESC, tb.startYear DESC