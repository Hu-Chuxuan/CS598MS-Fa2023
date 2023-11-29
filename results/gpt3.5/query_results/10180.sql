SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle != 'Father Figures' 
AND primaryTitle != 'Game Night'
AND genres LIKE '%Comedy%'
AND startYear <= 2018
ORDER BY averageRating DESC
LIMIT 5