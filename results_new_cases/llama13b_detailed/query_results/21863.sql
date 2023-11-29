SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Action%'
AND tp.category = 'actor'
AND nb.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (
  SELECT 1 FROM title_ratings tr
  WHERE tb.tconst = tr.tconst AND tr.numVotes > 1000
)
ORDER BY tb.startYear DESC, tb.runtimeMinutes DESC, tp.ordering ASC