SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2005
AND genres LIKE '%Comedy%'
AND genres LIKE '%Family%'
AND tconst NOT IN ('The Pacifier (2005)')
ORDER BY averageRating DESC
LIMIT 5