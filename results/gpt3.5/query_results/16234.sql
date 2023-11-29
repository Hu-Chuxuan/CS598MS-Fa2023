SELECT primaryTitle, startYear, runtimeMinutes, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Family%'
AND startYear >= 2010
AND runtimeMinutes <= 120
AND averageRating >= 6
AND primaryTitle NOT IN ('Ender\'s Game')
ORDER BY numVotes DESC
LIMIT 5