SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres LIKE '%Animation%'
AND tconst != 'tt0435761' -- excluding 'Up (2009)'
ORDER BY averageRating DESC
LIMIT 5