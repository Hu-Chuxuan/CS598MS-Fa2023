SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr
ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt6472976')  -- Exclude 'Love, Simon (2018)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5