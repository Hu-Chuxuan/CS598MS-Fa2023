SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1990
AND genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Mrs. Doubtfire', 'RV')
ORDER BY averageRating DESC
LIMIT 5