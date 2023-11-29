SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (primaryTitle LIKE '%Detective School Dropouts%' OR primaryTitle LIKE '%Police Academy%')
AND startYear BETWEEN 1970 AND 1990
AND title_basics.titleType = 'movie'
ORDER BY averageRating DESC
LIMIT 5