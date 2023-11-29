SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Romance%' 
AND tb.genres LIKE '%Comedy%' 
AND tb.primaryTitle NOT IN ('The Goonies (1985)', 'Pirates of the Caribbean ') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC 
LIMIT 5