SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear = 1978
AND tb.primaryTitle NOT LIKE '%Halloween%'
ORDER BY tr.averageRating DESC
LIMIT 5