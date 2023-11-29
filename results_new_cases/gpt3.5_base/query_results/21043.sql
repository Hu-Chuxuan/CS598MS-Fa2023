SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2010
AND genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Game Night', 'The Boss')
ORDER BY averageRating DESC
LIMIT 1