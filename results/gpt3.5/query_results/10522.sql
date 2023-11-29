SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT IN ('Blended', 'A Bad Moms Christmas', 'Jumanji', 'Sweet Home Alabama', 'Legally Blonde', 'The Wedding Singer', 'Bad Moms')
AND startYear <= 2002
ORDER BY averageRating DESC
LIMIT 5