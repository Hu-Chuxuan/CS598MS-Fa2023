SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.genres
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 10