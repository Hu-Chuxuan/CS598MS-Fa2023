SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Romance%'
AND genres LIKE '%Comedy%'
AND startYear > 1980
AND startYear < 2003
AND averageRating > 6.5
AND primaryTitle NOT IN ('Steel Magnolias (1989)', '9 to 5  (1980)')
ORDER BY averageRating DESC
LIMIT 5