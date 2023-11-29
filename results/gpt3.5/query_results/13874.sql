SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle NOT LIKE '%Tinker Bell%' 
AND primaryTitle NOT LIKE '%The Parent Trap%'
AND primaryTitle NOT LIKE '%The Boss Baby%'
AND titleType = 'movie'
AND startYear < 2023
ORDER BY averageRating DESC
LIMIT 5