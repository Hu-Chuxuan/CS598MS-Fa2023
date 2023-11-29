SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Night of the Living Dead  (1990)'
AND tb1.titleType = 'movie'
AND tb1.startYear <= 1990
AND tb1.tconst <> tb2.tconst
AND tb1.numVotes >= 1000
ORDER BY tb1.averageRating DESC
LIMIT 1