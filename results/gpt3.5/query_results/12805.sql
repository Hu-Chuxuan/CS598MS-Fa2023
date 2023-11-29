SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.startYear <= 2021 
AND tb.genres LIKE '%Sci-Fi%' 
AND tb.tconst NOT IN ('tt0083658', 'tt1620680') 
ORDER BY tr.numVotes DESC
LIMIT 5