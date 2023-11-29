SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' OR genres LIKE '%Mystery%'
AND startYear >= 2000
AND primaryTitle != 'The Others'
ORDER BY averageRating DESC
LIMIT 5