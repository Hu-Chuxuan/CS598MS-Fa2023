SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle LIKE '%Mom%'
AND primaryTitle NOT LIKE '%Dad%'
AND primaryTitle NOT LIKE '%Grandma%'
AND primaryTitle NOT LIKE '%Grandpa%'
AND primaryTitle NOT LIKE '%Father%'
AND primaryTitle NOT LIKE '%Mother%'
AND primaryTitle NOT LIKE '%Son%'
AND genres LIKE '%Horror%'
AND startYear <= 1987
ORDER BY averageRating DESC
LIMIT 5