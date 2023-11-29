SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%War%'
AND tb.primaryTitle != 'Hacksaw Ridge'
ORDER BY tr.numVotes DESC
LIMIT 5