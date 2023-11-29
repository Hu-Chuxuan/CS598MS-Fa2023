SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.runtimeMinutes AS duration_minutes, tb.genres AS genre, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Titanic', 'Casino', 'The Godfather', 'Godfather')
ORDER BY tr.numVotes DESC
LIMIT 5