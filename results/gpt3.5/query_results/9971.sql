SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres LIKE '%Action%'
AND primaryTitle NOT IN ('The Avengers (2012)', 'Thor', 'The Incredible Hulk (2008)')
ORDER BY averageRating DESC
LIMIT 5