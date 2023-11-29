SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND isAdult = 0
AND startYear <= 1995
AND genres NOT LIKE '%Family%'
AND tconst NOT IN ('tt0114388')
ORDER BY averageRating DESC
LIMIT 5