SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear = 2016
AND titleType = 'movie'
AND primaryTitle NOT IN ('Moonlight', 'Arrival')
ORDER BY averageRating DESC
LIMIT 10