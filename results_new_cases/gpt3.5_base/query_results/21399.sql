SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.startYear >= 1990 AND tb.startYear < 2000 
AND tb.genres LIKE '%Action%' 
AND tb.tconst NOT IN ('tt0100405') 
ORDER BY tr.averageRating DESC 
LIMIT 5