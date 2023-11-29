SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1990
AND genres LIKE '%Thriller%'
AND primaryTitle NOT IN ('The Number 23 (2007)', 'The Sixth Sense (1999)')
ORDER BY averageRating DESC
LIMIT 5