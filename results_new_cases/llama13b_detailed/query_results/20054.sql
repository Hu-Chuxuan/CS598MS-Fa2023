SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Comedy%'
AND n.primaryProfession LIKE '%Actor%'
AND t.startYear = tr.startYear
AND t.endYear = tr.endYear
AND t.runtimeMinutes > 60
AND t.isAdult = 0
AND tr.averageRating > 6
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 10