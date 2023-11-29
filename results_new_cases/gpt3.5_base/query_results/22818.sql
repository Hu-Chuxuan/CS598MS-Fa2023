SELECT t1.primaryTitle AS recommended_movie
FROM title_basics t1
JOIN title_basics t2 ON t1.genres = t2.genres
WHERE t2.primaryTitle = 'Scream  (1996)'
AND t1.titleType = 'movie'
AND t1.averageRating > 7
AND t1.numVotes > 1000
AND t1.startYear >= 2000
AND t1.primaryTitle != 'Scream  (1996)'
ORDER BY t1.averageRating DESC, t1.numVotes DESC
LIMIT 5