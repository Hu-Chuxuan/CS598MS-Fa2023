SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle != 'Spider-Man'
AND primaryTitle != 'Guardians of the Galaxy'
AND startYear <= 2002
ORDER BY averageRating DESC
LIMIT 5