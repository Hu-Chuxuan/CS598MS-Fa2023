SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 1963
AND genres LIKE '%Comedy%'
AND primaryTitle != 'The Pink Panther (1963)'
ORDER BY averageRating DESC
LIMIT 5