SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie' 
AND tb1.startYear >= 2000 
AND tb1.genres LIKE '%Horror%' 
AND tb1.tconst NOT IN ('tt0103919', 'tt0387564') 
ORDER BY tr.averageRating DESC
LIMIT 5