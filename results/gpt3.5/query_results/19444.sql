SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres LIKE '%Animation%'
AND primaryTitle NOT LIKE '%Toy Story%'
AND primaryTitle NOT IN ('Up', 'Shrek', 'Monsters, Inc.', 'Ice Age', 'Inside Out')
ORDER BY numVotes DESC
LIMIT 5