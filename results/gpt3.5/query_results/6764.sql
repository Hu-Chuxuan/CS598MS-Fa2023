SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres LIKE '%Action%'
AND genres LIKE '%Sci-Fi%'
AND tconst NOT IN ('tt0120903', 'tt3315342')  -- excluding X-Men and Logan
ORDER BY averageRating DESC
LIMIT 5