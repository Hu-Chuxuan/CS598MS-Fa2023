SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear <= 2008
AND genres NOT LIKE '%Animation%'
AND genres LIKE '%Action%'
AND genres NOT LIKE '%Violence%'
AND averageRating >= 6.0
AND runtimeMinutes <= 150
ORDER BY averageRating DESC
LIMIT 5