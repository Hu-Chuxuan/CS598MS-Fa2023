SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%' 
AND tb.genres LIKE '%Thriller%' 
AND tb.titleType = 'movie' 
AND tr.numVotes > 1000 
AND tb.tconst NOT IN ('tt0114369') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10