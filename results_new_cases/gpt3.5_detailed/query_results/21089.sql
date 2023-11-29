SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' 
AND genres LIKE '%Sci-Fi%'
AND title_basics.titleType = 'movie'
AND startYear > 2012
ORDER BY averageRating DESC
LIMIT 10