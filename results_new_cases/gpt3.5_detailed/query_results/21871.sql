SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND startYear >= 1990
AND startYear <= 2010
AND genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Dumb and Dumber', 'Superbad', 'Black Panther')
ORDER BY averageRating DESC
LIMIT 5