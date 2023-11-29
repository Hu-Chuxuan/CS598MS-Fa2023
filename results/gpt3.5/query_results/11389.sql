SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.startYear = 2017
AND tb1.genres LIKE '%Comedy%'
AND tb1.genres LIKE '%Adventure%'
AND tb1.genres LIKE '%Action%'
AND tb1.primaryTitle != 'Jumanji (2017)'
AND tb1.primaryTitle != 'A Bad Moms Christmas (2017)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5