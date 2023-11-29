SELECT tb1.primaryTitle AS movie_title, tb1.startYear AS release_year, tb1.runtimeMinutes AS duration_minutes, tb1.genres AS movie_genres, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie' 
AND tb1.genres LIKE '%Musical%' 
AND tb1.originalTitle = 'Les Misérables'
AND tb1.startYear >= 2010
AND tb1.startYear < 2020
AND tb1.tconst NOT IN ('tt0111257', 'tt0385752') 
ORDER BY tr.averageRating DESC
LIMIT 5