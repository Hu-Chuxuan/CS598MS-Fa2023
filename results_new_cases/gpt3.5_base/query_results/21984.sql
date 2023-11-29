SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' AND startYear < 1970
AND primaryTitle != 'Rosemary\'s Baby (1968)' 
ORDER BY averageRating DESC
LIMIT 5