SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.startYear BETWEEN 1970 AND 1989 
AND tb.titleType = 'movie' 
AND tb.tconst NOT IN ('tt0082186', 'tt0080339', 'tt0074937') 
ORDER BY tr.averageRating DESC