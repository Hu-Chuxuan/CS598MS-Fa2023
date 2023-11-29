SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Action%' 
AND tb.startYear < 2009 
AND tb.primaryTitle NOT LIKE '%Batman Begins%' 
AND tb.primaryTitle NOT IN ('Fast & Furious', 'Mad Max: Fury Road (2015)') 
ORDER BY tr.averageRating DESC
LIMIT 3