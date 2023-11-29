SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
WHERE tb.titleType = 'movie'
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 10