SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb1.genres
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst 
WHERE tb1.startYear IN (1983, 1984) 
AND tb1.titleType = 'movie' 
AND tb1.primaryTitle NOT IN ('Trading Places', 'This Is Spinal Tap', 'Anchorman')
ORDER BY tr.numVotes DESC
LIMIT 5