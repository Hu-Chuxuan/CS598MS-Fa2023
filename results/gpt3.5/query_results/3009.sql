SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2008
AND genres LIKE '%Comedy%'
AND primaryTitle != 'Pineapple Express'
ORDER BY averageRating DESC
LIMIT 5