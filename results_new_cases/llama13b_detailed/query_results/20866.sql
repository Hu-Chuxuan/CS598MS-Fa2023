SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Comedy%' AND t.startYear > 2000 AND t.endYear < 2010
AND n.primaryProfession LIKE '%Actor%'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC, t.primaryTitle ASC