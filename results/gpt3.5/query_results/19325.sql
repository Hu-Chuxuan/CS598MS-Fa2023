SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.runtimeMinutes AS duration_minutes, tb.genres AS movie_genres
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2003
AND tr.averageRating >= 7.5
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0319755', 'tt0035423')
ORDER BY tr.numVotes DESC
LIMIT 5