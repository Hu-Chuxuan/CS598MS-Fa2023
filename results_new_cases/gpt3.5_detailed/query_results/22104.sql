SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2017
AND genres LIKE '%Drama%'
AND tconst NOT IN ('tt0025318', 'tt09752074', 'tt0000036') -- Excluding the movies in the user's preference history
ORDER BY averageRating DESC
LIMIT 5