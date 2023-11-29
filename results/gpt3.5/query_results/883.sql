SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2017
AND genres LIKE '%Horror%'
AND primaryTitle NOT IN ('It  (2017)', 'Friday the 13th  (1980)', 'A Nightmare on Elm Street (1984)')
ORDER BY averageRating DESC
LIMIT 5