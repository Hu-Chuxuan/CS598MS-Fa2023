SELECT * FROM title_basics tb
INNER JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
INNER JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType ='movie'
AND tb.isAdult = 0
AND tp.category = 'actor'
AND tp.job = 'lead'
AND tp.characters NOT LIKE '%["%]'
AND tb.genres LIKE '%Drama%'
AND tb.runtimeMinutes > 90
AND tb.numVotes > 1000
AND tb.averageRating > 6.5
AND NOT EXISTS (
  SELECT 1 FROM title_ratings tr
  WHERE tr.tconst = tb.tconst
  AND tr.averageRating > 7.5
)
ORDER BY tb.startYear DESC, tb.endYear DESC, tb.runtimeMinutes DESC, tb.averageRating DESC