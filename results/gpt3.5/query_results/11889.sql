SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Drama%'
AND startYear >= 1990
AND startYear <= 2000
AND primaryTitle NOT LIKE '%Shall We Dance%'
AND primaryTitle LIKE '%Japanese%'
AND primaryTitle LIKE '%dance%'
AND primaryTitle LIKE '%not working%'
AND primaryTitle LIKE '%hobby%'
ORDER BY averageRating DESC
LIMIT 5