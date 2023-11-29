SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1990
AND genres LIKE '%Action%'
AND tconst NOT IN ('tt0117060', 'tt0117064', 'tt0408037')
ORDER BY averageRating DESC
LIMIT 5