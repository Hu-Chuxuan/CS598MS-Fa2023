SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND startYear < 2017
AND genres LIKE '%Thriller%'
AND tconst NOT IN ('Unbreakable', 'What Lies Beneath', 'Split')
ORDER BY averageRating DESC
LIMIT 5