SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 1974
AND tb.genres LIKE '%Mystery%'
AND tb.primaryTitle NOT LIKE '%Murder on the Orient Express%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5