SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType ='movie'
AND tb.isAdult = 0
AND tb.startYear > 2000
AND tb.endYear IS NULL
AND tr.averageRating > 5
AND EXISTS (
  SELECT 1 FROM name_basics n
  WHERE n.primaryName = 'Ryan Reynolds'
  AND n.knownForTitles = 'tt0053137,tt00319'
)
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.category = 'actor'
  AND tp.job = 'actor'
  AND tp.characters = '["Ryan"]'
)
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC