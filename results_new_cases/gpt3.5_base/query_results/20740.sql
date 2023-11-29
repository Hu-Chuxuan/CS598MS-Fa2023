SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' 
AND tb.tconst NOT IN ('Game Night (2018)') 
ORDER BY tr.averageRating DESC 
LIMIT 5