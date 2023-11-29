SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' AND genres LIKE '%Dark%'
AND startYear > 2000
AND primaryTitle NOT IN ('Talladega Nights: The Ballad of Ricky Bobby', 'The Hangover', 'Little Miss Sunshine')
ORDER BY averageRating DESC
LIMIT 5