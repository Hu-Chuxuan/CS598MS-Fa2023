SELECT t1.primaryTitle AS recommended_movie, t1.startYear AS release_year, t1.runtimeMinutes AS duration_minutes, t1.genres AS movie_genres, t2.averageRating AS average_rating
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.titleType = 'movie'
AND t1.genres LIKE '%Adventure%'
AND t1.genres LIKE '%Comedy%'
AND t1.startYear > 2000
AND t1.primaryTitle NOT IN ('Blended', 'How to Lose a Guy in 10 Days', 'Bridget Jones''s Diary', 'The Skeleton Key')
ORDER BY t2.averageRating DESC, t2.numVotes DESC
LIMIT 5