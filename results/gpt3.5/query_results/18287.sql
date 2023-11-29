SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND startYear > 2000
AND tconst NOT IN ('tt0120855', 'tt0078788', 'tt0372588')  -- excluding the movies from user's preference history
ORDER BY averageRating DESC
LIMIT 5