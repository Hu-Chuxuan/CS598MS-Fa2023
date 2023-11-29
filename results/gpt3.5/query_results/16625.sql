SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.startYear >= 2000 
AND tb.genres LIKE '%Comedy%' 
AND tb.tconst NOT IN ('tt0142342', 'tt0357419') 
ORDER BY tr.averageRating DESC
LIMIT 10