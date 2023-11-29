SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.runtimeMinutes AS duration_minutes, tb2.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tb2 ON tb1.tconst = tb2.tconst
WHERE tb1.primaryTitle IN ('Me Before You', 'The Big Sick')
AND tb1.titleType = 'movie'