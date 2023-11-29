SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.runtimeMinutes AS duration_minutes, tb1.genres AS movie_genres, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 1980
AND tb1.genres LIKE '%Comedy%'
AND tr.numVotes >= 1000
AND tb1.tconst NOT IN ('tt0080339')  -- Exclude Airplane! to avoid recommending the same movie
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5