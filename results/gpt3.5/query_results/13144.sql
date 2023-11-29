SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Thriller%'
AND (primaryTitle LIKE '%stop%' OR primaryTitle LIKE '%die%')
AND titleType = 'movie'
ORDER BY averageRating DESC
LIMIT 5