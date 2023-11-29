SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Mystery%'
AND tr.averageRating >= 7
ORDER BY tr.numVotes DESC
LIMIT 5