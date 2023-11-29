SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 1995 AND tb.startYear <= 2005
AND tb.primaryTitle != 'Love Stinks'
ORDER BY tr.averageRating DESC
LIMIT 5