SELECT t1.primaryTitle AS recommended_movie, t1.startYear AS release_year, t1.genres AS genre, tr.averageRating AS rating
FROM title_basics t1
JOIN title_ratings tr ON t1.tconst = tr.tconst
WHERE t1.titleType = 'movie' 
AND tr.numVotes > 100 
AND t1.genres IS NOT NULL 
AND t1.startYear <= 2021
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10