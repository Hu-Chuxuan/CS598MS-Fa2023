SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Coming Home')
AND startYear >= 2010
AND startYear <= 2012
AND averageRating > 7
AND primaryTitle NOT IN ('Coming Home', 'Jumanji', 'Rampage')
ORDER BY averageRating DESC
LIMIT 5