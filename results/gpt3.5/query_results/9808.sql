SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 2014
AND tb1.genres LIKE '%Romance%'
AND tb1.tconst NOT IN ('tt0120338', 'tt2582846', 'tt0112573')
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5