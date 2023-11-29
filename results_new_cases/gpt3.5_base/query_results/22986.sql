SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Horror%' 
AND tr.averageRating > 7 
AND tb.primaryTitle NOT IN ('Jumanji  (2017)') 
ORDER BY tr.averageRating DESC 
LIMIT 5