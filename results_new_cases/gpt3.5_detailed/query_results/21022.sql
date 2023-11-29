SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.startYear IS NOT NULL 
AND tb.startYear <= 1983 
AND tb.genres LIKE '%Action%' 
ORDER BY tr.averageRating DESC 
LIMIT 5