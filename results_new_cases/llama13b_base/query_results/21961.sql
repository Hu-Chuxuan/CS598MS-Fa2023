SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.primaryName = nb.primaryName
JOIN title_crew tc ON tb.directors = tc.directors
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType ='movie'
AND tb.startYear = 1995
AND tb.runtimeMinutes > 90
AND tp.category = 'actor'
AND tp.job ='main'
AND tp.characters = 'lead'
AND tr.averageRating > 7
AND NOT EXISTS (
  SELECT 1 FROM title_basics tb2
  JOIN title_ratings tr2 ON tb2.tconst = tr2.tconst
  WHERE tb2.titleType ='movie'
  AND tb2.startYear = 1995
  AND tb2.runtimeMinutes > 90
  AND tr2.averageRating > 7
  AND tb2.tconst!= tb.tconst
)
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC