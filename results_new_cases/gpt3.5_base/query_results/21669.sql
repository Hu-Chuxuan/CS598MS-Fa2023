SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.runtimeMinutes AS duration_minutes, tb1.genres AS genre
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 2015
AND tb1.genres LIKE '%Action%'
AND tb1.tconst NOT IN ('tt0478970', 'tt0848228', 'tt5463162')  -- excluding the user's historical preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5