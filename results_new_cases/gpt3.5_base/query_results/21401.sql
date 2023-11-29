SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Stoner%' 
AND tb.startYear <= 1996 
AND tb.primaryTitle NOT IN ('Twins', 'Matilda') 
ORDER BY tr.averageRating DESC 
LIMIT 5