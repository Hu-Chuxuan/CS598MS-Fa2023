SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Action%' OR genres LIKE '%Comedy%' OR genres LIKE '%Romance%' OR genres LIKE '%Family%')
AND titleType = 'movie'
AND startYear > 1984
ORDER BY averageRating DESC
LIMIT 10