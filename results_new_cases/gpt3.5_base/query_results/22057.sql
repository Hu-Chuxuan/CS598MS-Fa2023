SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('30 Minutes or Less (2011)', 'Shaun of the Dead (2004)', 'Zombieland (2009)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5