SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Animation%' OR genres LIKE '%Family%')
AND startYear <= 1995
AND primaryTitle != 'Toy Story (1995)'
AND primaryTitle != 'The Lion King (1994)'
ORDER BY averageRating DESC
LIMIT 3