SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Comedy%' 
AND tr.averageRating >= 7 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10