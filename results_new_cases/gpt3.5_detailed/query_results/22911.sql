SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND titleType = 'movie'
AND startYear >= 2000
AND primaryTitle NOT IN ('Up', 'WALL-E', 'Inside Out', 'Old School')
ORDER BY averageRating DESC
LIMIT 5