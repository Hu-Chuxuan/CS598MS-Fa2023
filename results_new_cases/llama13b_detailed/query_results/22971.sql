SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Crime%' AND t.startYear >= 1995 AND t.endYear <= 2018
AND n.primaryProfession LIKE '%Actor%'
AND EXISTS (SELECT 1 FROM title_principals tp WHERE tp.tconst = t.tconst AND tp.category = 'actor')
ORDER BY tr.averageRating DESC, t.primaryTitle ASC