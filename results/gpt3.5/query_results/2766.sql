SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 1992
AND tb1.genres LIKE '%Animation%'
AND tb1.tconst NOT IN ('tt2294629', 'tt0126029', 'tt0266543', 'tt0103639') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5