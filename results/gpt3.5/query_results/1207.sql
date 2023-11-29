SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Romance%' 
AND tb1.startYear = 2003 
AND tb1.primaryTitle NOT LIKE '%Love Actually%'
ORDER BY tr.numVotes DESC
LIMIT 3