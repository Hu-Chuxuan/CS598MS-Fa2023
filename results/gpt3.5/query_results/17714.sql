SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear > 2010
AND tb1.genres LIKE '%Comedy%'
AND tr1.averageRating > 7
AND tb1.primaryTitle NOT IN ('Mean Girls (2004)', 'Easy A (2010)')
ORDER BY tr1.numVotes DESC
LIMIT 1