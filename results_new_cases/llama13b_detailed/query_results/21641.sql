SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.isAdult = 0
AND tb.genres LIKE '%Action%'
AND tb.runtimeMinutes > 90
AND tr.averageRating > 6.5
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Deadpool%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job LIKE '%Deadpool%'
)
ORDER BY tr.averageRating DESC, tb.startYear DESC