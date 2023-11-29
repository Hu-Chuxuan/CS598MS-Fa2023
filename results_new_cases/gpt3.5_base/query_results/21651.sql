SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Insidious', 'A Quiet Place')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5