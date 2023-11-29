SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.startYear > 2001 
AND tb.titleType = 'movie' 
AND tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Thriller%' 
AND tb.tconst NOT IN ('tt0111257', 'tt0221027')