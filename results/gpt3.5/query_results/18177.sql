SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 2016
AND tb.titleType = 'movie'
AND tb.primaryTitle = 'Moana'
OR tb.genres LIKE '%Adventure%'
OR tb.genres LIKE '%Animation%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5