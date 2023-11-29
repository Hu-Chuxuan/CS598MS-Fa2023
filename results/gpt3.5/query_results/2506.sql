SELECT tb1.primaryTitle AS recommended_movie, 
       tb1.startYear AS release_year, 
       tb1.runtimeMinutes AS duration_minutes, 
       tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Adventure%'
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear > 1985
AND tb1.startYear < 1990
AND tb1.tconst NOT IN ('tt0088763', 'tt0088763') -- excluding The Philadelphia Experiment (1984) and Back to the Future (1985)
ORDER BY tr.averageRating DESC
LIMIT 5