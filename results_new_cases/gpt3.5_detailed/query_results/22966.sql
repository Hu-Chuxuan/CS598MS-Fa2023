SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 2010
AND primaryTitle NOT IN ('Moana', 'It', 'The Kite', 'Lost', 'Princess')
ORDER BY averageRating DESC
LIMIT 5