SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS number_of_votes
FROM title_basics AS tb1
INNER JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 1990
AND tb1.genres LIKE '%Comedy%'
AND tb1.tconst NOT IN ('tt0104694', 'tt0108160', 'tt0117887')  -- Exclude previously watched movies
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5