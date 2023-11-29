SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= '1990' AND startYear < '2000' AND titleType = 'movie' AND isAdult = 0
ORDER BY averageRating DESC
LIMIT 10