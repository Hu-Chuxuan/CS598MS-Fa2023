SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Time-Travel%'
AND startYear < 2012
AND primaryTitle NOT IN ('Looper', "Bill & Ted's Excellent Adventure", 'Back to the Future')
ORDER BY averageRating DESC
LIMIT 5