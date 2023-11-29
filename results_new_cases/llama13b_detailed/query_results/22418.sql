SELECT * FROM title_basics t
JOIN title_crew tc ON t.tconst = tc.tconst
JOIN title_principals tp ON tc.tconst = tp.tconst
JOIN name_basics n ON tp.nconst = n.nconst
WHERE t.genres LIKE '%Superhero%'
AND n.primaryProfession LIKE '%Actor%'
AND tp.job LIKE '%Actor%'
AND NOT EXISTS (
  SELECT 1 FROM title_ratings tr
  WHERE t.tconst = tr.tconst AND tr.averageRating > 5
)
ORDER BY t.startYear DESC, t.endYear DESC, t.runtimeMinutes DESC, n.primaryName ASC