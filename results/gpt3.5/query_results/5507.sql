SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
JOIN title_basics AS tb2 ON tb1.genres LIKE CONCAT('%', tb2.genres, '%')
WHERE tb2.primaryTitle = 'The Cell (2000)'
AND tb1.titleType = 'movie'
AND tb1.startYear >= 2000
AND tb1.averageRating > 7
AND tb1.numVotes > 5000
ORDER BY tb1.averageRating DESC
LIMIT 5