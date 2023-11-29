SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE n.primaryProfession LIKE '%actor%'
AND t.genres LIKE '%Comedy%'
AND t.runtimeMinutes > 90
AND t.startYear > 1980
AND t.endYear < 2010
AND tr.averageRating > 6
ORDER BY tr.averageRating DESC, t.primaryTitle ASC