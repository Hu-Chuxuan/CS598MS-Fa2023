SELECT tb1.primaryTitle AS Recommended_Movie, tr.averageRating AS Rating, tr.numVotes AS Num_Votes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 1990
AND tb1.genres LIKE '%Horror%'
AND tb1.tconst NOT IN ('tt0099864') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5