SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.tconst = tb2.tconst
WHERE tb2.genres LIKE '%Mystery%'
AND tb1.titleType = 'movie'
AND tb1.averageRating >= 8
ORDER BY tb1.numVotes DESC
LIMIT 5