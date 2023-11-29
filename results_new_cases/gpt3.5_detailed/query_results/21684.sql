SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1980
AND genres LIKE '%Drama%'
AND primaryTitle != 'The Great Gatsby'
ORDER BY averageRating DESC
LIMIT 5