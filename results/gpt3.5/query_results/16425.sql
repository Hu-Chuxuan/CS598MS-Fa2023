SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle IN ('Gladiator', 'Salt', '300')
AND startYear > 2000
ORDER BY averageRating DESC
LIMIT 5