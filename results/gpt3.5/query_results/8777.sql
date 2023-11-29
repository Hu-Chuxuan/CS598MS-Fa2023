SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Action%'
AND startYear > 2000
AND primaryTitle NOT IN ('Suicide Squad', 'I, Robot')
ORDER BY numVotes DESC
LIMIT 5