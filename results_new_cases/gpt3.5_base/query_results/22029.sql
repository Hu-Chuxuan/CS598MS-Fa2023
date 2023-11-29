SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT LIKE '%Daddy\'s Home%'
AND genres LIKE '%Comedy%'
AND startYear > 2010
ORDER BY averageRating DESC
LIMIT 5