SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2022
AND genres LIKE '%Action%' OR genres LIKE '%Sci-Fi%'
AND primaryTitle NOT IN ('The Matrix', 'Speed')
ORDER BY averageRating DESC
LIMIT 10