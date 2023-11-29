SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Drama%'
AND startYear > 2010
AND tconst NOT IN ('tt1262426','tt0096895','tt0108550') -- Exclude the movies from user's preferences
ORDER BY averageRating DESC
LIMIT 5