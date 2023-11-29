SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' 
AND tb.tconst NOT IN ('tt0080339') 
AND tb.startYear <= 1980 
ORDER BY tr.averageRating DESC 
LIMIT 5