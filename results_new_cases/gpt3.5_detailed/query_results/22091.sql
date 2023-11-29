SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2010
AND genres LIKE '%Action%'
AND tconst NOT IN ('tt3890160', 'tt1469304', 'tt0780504') -- excluding user preference history
ORDER BY averageRating DESC
LIMIT 10