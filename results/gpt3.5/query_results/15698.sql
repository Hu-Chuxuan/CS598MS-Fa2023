SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2010
AND genres LIKE '%Animation%'
AND runtimeMinutes <= 120
AND averageRating >= 7
AND (primaryTitle NOT IN ('Frozen', 'Coco'))
ORDER BY averageRating DESC
LIMIT 5