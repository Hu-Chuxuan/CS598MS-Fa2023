SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Horror%'
AND startYear > 2010
AND averageRating > 7.5
AND primaryTitle NOT IN ('It (1990)', 'The Conjuring 2 (2016)')
ORDER BY averageRating DESC
LIMIT 5