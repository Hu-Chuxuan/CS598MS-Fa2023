SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' 
AND tb.startYear BETWEEN 1995 AND 2005
AND tb.tconst NOT IN ('tt0138097', 'tt0795421') 
ORDER BY tr.averageRating DESC
LIMIT 5