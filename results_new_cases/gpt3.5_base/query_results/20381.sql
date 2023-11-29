SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE titleType = 'movie' 
AND startYear <= 2010 
AND runtimeMinutes <= 150 
AND genres LIKE '%Family%'
AND tconst NOT IN ('tt0451279', 'tt1392170', 'tt0449499', 'tt1951264') -- Exclude previously watched movies
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10