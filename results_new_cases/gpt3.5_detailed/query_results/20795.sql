SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Action%'
AND startYear >= 2000
AND primaryTitle NOT IN ('Doctor Strange  (2016)', 'Iron Man  (2008)', 'Spider-Man  (2002)')
ORDER BY averageRating DESC
LIMIT 10