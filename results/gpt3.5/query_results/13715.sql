SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Animation%'
AND startYear > 2010
AND runtimeMinutes > 60
AND averageRating > 7
AND tconst NOT IN ('tt2380307', 'tt3315342')  -- Excluding 'Peter Rabbit (2018)' and 'Coco  (2017)'
ORDER BY averageRating DESC
LIMIT 5