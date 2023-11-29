SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 1990
AND genres LIKE '%Romance%'
AND tconst NOT IN ('tt0120338', 'tt0065568', 'tt0100405')
ORDER BY numVotes DESC
LIMIT 5