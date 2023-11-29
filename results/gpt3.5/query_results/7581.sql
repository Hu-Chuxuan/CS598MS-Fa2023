SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT IN ('Hannibal', 'Gravity', 'Interstellar', 'Airplane II: The Sequel', 'Red Dragon', 'Airplane!', 'Borat')
AND startYear <= 2022
ORDER BY averageRating DESC
LIMIT 5