SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Comedy%'
AND nb.primaryProfession LIKE '%Actor%'
AND tr.averageRating > 6.5
AND tr.numVotes > 1000
AND tb.startYear BETWEEN 1980 AND 2010
AND tb.endYear IS NULL
AND tb.runtimeMinutes < 120
AND tb.isAdult = 0

ORDER BY tr.averageRating DESC, tb.primaryTitle ASC

LIMIT 10