SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.primaryTitle NOT IN ('The Matrix (1999)', 'Speed  (1994)')
AND tb1.startYear <= 2000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10