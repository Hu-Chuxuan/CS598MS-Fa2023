SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Thriller%'
AND primaryTitle NOT IN ('Minority Report', 'Get Out', 'Memento', 'Identity', '10 Cloverfield Lane')
ORDER BY averageRating DESC
LIMIT 5