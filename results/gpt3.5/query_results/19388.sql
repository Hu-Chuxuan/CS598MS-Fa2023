SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Animation%' AND startYear >= 2015
ORDER BY averageRating DESC
LIMIT 5