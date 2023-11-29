SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Horror%' 
AND tb.startYear <= 1970 
AND tr.averageRating >= 7 
ORDER BY tr.numVotes DESC 
LIMIT 5