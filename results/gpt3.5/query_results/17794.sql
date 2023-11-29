SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres NOT LIKE '%Superhero%'
AND primaryTitle != 'Baby Driver'
ORDER BY averageRating DESC
LIMIT 5