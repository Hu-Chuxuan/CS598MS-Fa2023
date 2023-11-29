SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Western%'
AND startYear >= 1970
AND primaryTitle NOT IN ('Westworld')
AND primaryTitle NOT IN ('The Inglorious Bastards')
ORDER BY averageRating DESC
LIMIT 3