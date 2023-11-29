SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 1998 
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Romance%'
AND tb.primaryTitle NOT IN ('Blended', 'Never Been Kissed', '50 First Dates', 'The Wedding Singer', 'Big Daddy')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5