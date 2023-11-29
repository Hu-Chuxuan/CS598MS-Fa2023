SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.isAdult = 0
AND title_basics.startYear <= 2021
AND genres LIKE '%Family%'
ORDER BY averageRating DESC
LIMIT 10