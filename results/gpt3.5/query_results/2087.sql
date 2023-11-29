SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres NOT LIKE '%Animation%'
AND primaryTitle NOT IN ('Tangled (2010)', 'Frozen', 'Pinocchio (1972)')
ORDER BY averageRating DESC
LIMIT 5