SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2021
AND primaryTitle NOT IN ('Game Night (2018)', 'The Boss  (2016)')
ORDER BY averageRating DESC
LIMIT 1