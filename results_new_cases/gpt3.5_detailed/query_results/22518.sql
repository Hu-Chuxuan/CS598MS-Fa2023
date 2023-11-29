SELECT t1.tconst, t1.primaryTitle, t1.startYear, t2.averageRating
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.titleType = 'movie' 
AND t1.genres LIKE '%Animation%'
AND t1.startYear IN (2017, 2004)
AND t1.primaryTitle NOT IN ('Coco', 'The Incredibles')
AND t1.primaryTitle NOT IN ('Casino', 'Guardians of the Galaxy', 'Goodfellas', 'The Avengers')
ORDER BY t2.averageRating DESC
LIMIT 5