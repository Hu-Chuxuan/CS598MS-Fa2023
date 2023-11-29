SELECT t1.primaryTitle AS recommended_movie
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.titleType = 'movie'
AND t1.genres LIKE '%Documentary%'
AND t1.primaryTitle NOT IN ('Food, Inc. (2008)')
ORDER BY t2.averageRating DESC, t2.numVotes DESC
LIMIT 5