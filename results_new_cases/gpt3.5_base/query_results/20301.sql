SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Gangster%'
AND primaryTitle NOT IN ('Casino  (1995)', 'Goodfellas (1990)', 'Godfather  (1991)')
AND startYear <= 1995
ORDER BY averageRating DESC
LIMIT 5