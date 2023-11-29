SELECT tb1.primaryTitle AS RecommendedMovie, tb1.startYear AS ReleaseYear, tb1.genres AS Genre, tr.averageRating AS AverageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear IN (2017, 2018, 2005) 
AND tb1.genres LIKE '%Romance%'
AND tb1.tconst NOT IN ('tt1375666', 'tt0379786')  -- excluding the movies from user's preference history
ORDER BY tr.averageRating DESC
LIMIT 5