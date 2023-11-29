SELECT t1.primaryTitle AS recommended_movie, t1.startYear AS year 
FROM title_basics t1 
JOIN title_ratings t2 ON t1.tconst = t2.tconst 
WHERE t1.genres LIKE '%Drama%' 
AND t1.titleType = 'movie' 
AND t1.startYear <= 2015 
AND t2.averageRating >= 8 
AND t2.numVotes > 1000 
ORDER BY t2.averageRating DESC, t2.numVotes DESC 
LIMIT 5