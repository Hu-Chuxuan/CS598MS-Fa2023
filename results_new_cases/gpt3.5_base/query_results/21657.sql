SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Action%' 
AND tb.startYear <= 2011 
AND tr.averageRating > 7 
AND tb.primaryTitle NOT IN ('The Matrix (1999)', 'Source Code (2011)', 'Primer  (2004)') 
ORDER BY tr.averageRating DESC 
LIMIT 5