SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2021
AND genres LIKE '%Drama%'
AND averageRating > 6
AND primaryTitle NOT IN ('The Boss', 'Fifty Shades of Grey')
ORDER BY averageRating DESC
LIMIT 5