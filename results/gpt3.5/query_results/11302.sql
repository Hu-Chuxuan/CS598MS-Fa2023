SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle IN ('Goodfellas', 'Pulp Fiction', 'Reservoir Dogs', 'Seven')
AND tb1.titleType = 'movie'
AND tr.numVotes > 1000
AND tb1.startYear > 1995
ORDER BY tr.averageRating DESC
LIMIT 5