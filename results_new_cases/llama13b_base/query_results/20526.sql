SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.genres = 'Comedy' AND tb.startYear >= 2000 AND tb.endYear <= 2010
AND tp.category = 'Actor' AND tp.job = 'Lead'
AND EXISTS (
  SELECT 1 FROM title_ratings tr2
  WHERE tr2.tconst = tb.tconst AND tr2.averageRating > 7 AND tr2.numVotes > 1000
)
AND NOT EXISTS (
  SELECT 1 FROM title_ratings tr3
  WHERE tr3.tconst = tb.tconst AND tr3.averageRating < 5 AND tr3.numVotes > 1000
)
AND tb.primaryTitle IN (
  SELECT primaryTitle
  FROM title_basics
  WHERE genres = 'Comedy' AND startYear >= 2000 AND endYear <= 2010
  GROUP BY primaryTitle
  HAVING COUNT(DISTINCT tconst) > 10
)
ORDER BY tb.startYear DESC, tp.characters