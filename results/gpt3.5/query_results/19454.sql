SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%'
AND startYear >= 2000
AND primaryTitle NOT IN ('Notebook', 'Titanic')
ORDER BY averageRating DESC
LIMIT 5