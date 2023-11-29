SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Adventure%' 
AND tb.genres LIKE '%Fantasy%' 
AND tb.startYear > 2000 
AND tr.averageRating > 7.5 
AND tb.tconst NOT IN ('tt0458525', 'tt1396484', 'tt2023587') 
ORDER BY tr.numVotes DESC 
LIMIT 5