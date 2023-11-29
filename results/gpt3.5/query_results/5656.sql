SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= YEAR(CURDATE())
AND tb.genres LIKE '%Romance%'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Me Before You', 'Moana')
ORDER BY tr.numVotes DESC
LIMIT 5