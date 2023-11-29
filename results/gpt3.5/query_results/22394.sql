SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2013
AND tb1.genres LIKE '%Action%'
AND tb1.tconst NOT IN ('tt0120903', 'tt1877832')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5