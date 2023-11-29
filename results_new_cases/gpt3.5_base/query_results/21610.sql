SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating 
FROM title_basics tb1 
JOIN title_ratings tr ON tb1.tconst = tr.tconst 
WHERE tb1.genres LIKE '%War%' 
AND tb1.startYear >= 1990 
AND tb1.tconst <> 'tt0120815' 
ORDER BY tr.averageRating DESC 
LIMIT 5