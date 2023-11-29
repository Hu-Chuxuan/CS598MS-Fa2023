SELECT t1.primaryTitle AS recommended_movie, t1.startYear AS release_year, t2.averageRating AS rating
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Comedy%'
AND t1.tconst NOT IN ('tt4154756')
ORDER BY t2.numVotes DESC
LIMIT 5