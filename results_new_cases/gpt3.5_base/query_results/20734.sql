SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
INNER JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'I Now Pronounce You Chuck & Larry (2007)'
AND tb1.titleType = 'movie'
AND tb1.primaryTitle != 'I Now Pronounce You Chuck & Larry (2007)'
AND tb1.startYear >= 2000
AND tb1.genres LIKE '%Comedy%'
AND tb1.averageRating > 7
ORDER BY tb1.numVotes DESC
LIMIT 5