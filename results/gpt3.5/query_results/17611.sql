SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1980
AND genres LIKE '%Horror%'
AND tconst NOT IN ('tt0084787', 'tt0090605')
ORDER BY averageRating DESC
LIMIT 5