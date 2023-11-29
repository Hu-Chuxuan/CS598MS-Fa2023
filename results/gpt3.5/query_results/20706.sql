SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle != 'Oh, Daddy\'s Home 2'
AND genres LIKE '%Comedy%'
ORDER BY averageRating DESC
LIMIT 5