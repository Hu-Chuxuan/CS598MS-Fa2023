SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear BETWEEN 1970 AND 1985
AND tb.tconst != 'tt0084522' -- Excluding Porky's (1981)
ORDER BY tr.averageRating DESC
LIMIT 10