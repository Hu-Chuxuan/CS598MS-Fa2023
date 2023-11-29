SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear > 2010
AND tb1.genres LIKE '%Animation%'
AND tb1.tconst NOT IN ('tt2096673', 'tt0435761')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5