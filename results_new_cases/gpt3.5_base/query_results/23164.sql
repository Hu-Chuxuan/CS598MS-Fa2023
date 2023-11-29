SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 2000 
AND tb.averageRating >= 6.5 
AND tb.primaryTitle NOT IN ('A Perfect Getaway (2009)', 'Friday the 13th (1980)', 'The Purge (2013)') 
ORDER BY tr.numVotes DESC 
LIMIT 5