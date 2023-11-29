SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 1995
AND genres LIKE '%Comedy%'
AND genres LIKE '%Adventure%'
AND averageRating > 7.5
AND (primaryTitle NOT LIKE '%Bridesmaids%' OR primaryTitle NOT LIKE '%Jumanji%')
ORDER BY averageRating DESC
LIMIT 5