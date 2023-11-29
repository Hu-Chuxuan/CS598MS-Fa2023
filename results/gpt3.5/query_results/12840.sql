SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 1988
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Crime%'
AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('Throw Momma from the Train (1987)', 'Get Shorty ', 'Heathers (1988)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5