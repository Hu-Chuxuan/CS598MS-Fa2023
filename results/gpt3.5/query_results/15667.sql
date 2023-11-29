SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Horror%'
AND startYear >= 2000
AND primaryTitle != 'Freddy vs. Jason'
AND primaryTitle NOT IN ('The Sixth Sense', 'The Others')
ORDER BY averageRating DESC
LIMIT 5