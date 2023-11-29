SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Animation%'
AND tb1.startYear = 2021
AND tb1.tconst NOT IN ('tt0112461', 'tt0107034', 'tt0137523', 'tt0993846', 'tt1375666')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5