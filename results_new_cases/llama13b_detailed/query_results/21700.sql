SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN title_crew tc ON t.tconst = tc.tconst
JOIN title_principals tp ON t.tconst = tp.tconst
WHERE t.genres LIKE '%Adventure%'
AND t.startYear >= 1990
AND t.endYear <= 2010
AND tp.category IN ('actor', 'writer')
AND tp.job NOT IN ('self', 'producer')
AND n.primaryProfession LIKE '%actor%'
AND EXISTS (
  SELECT 1 FROM title_ratings tr2
  WHERE tr2.tconst = t.tconst AND tr2.numVotes > 1000
)
AND NOT EXISTS (
  SELECT 1 FROM title_ratings tr3
  WHERE tr3.tconst = t.tconst AND tr3.numVotes < 5
)
ORDER BY t.startYear DESC, tr.averageRating DESC