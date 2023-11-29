SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' 
AND tb.startYear BETWEEN 1990 AND 2005
AND tb.tconst NOT IN ('tt0169547', 'tt0286106') 
ORDER BY tr.averageRating DESC
LIMIT 5