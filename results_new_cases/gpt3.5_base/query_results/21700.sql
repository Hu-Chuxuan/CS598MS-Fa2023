SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT IN ('Fear and Loathing in Las Vegas', "Wes Craven's New Nightmare", 'Dogma', 'Tucker & Dale vs. Evil', 'Confessions of a Dangerous Mind', 'Scream 3', 'Ed Wood', 'Behind the Mask')
AND startYear <= 2010
ORDER BY averageRating DESC
LIMIT 10