SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Comedy%' OR genres LIKE '%Romance%')
AND primaryTitle != 'Caddyshack' 
AND startYear <= 1986 
AND startYear >= 1980 
ORDER BY averageRating DESC