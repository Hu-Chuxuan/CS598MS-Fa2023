SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND startYear > 2001
AND startYear < 2022
AND primaryTitle NOT IN ('Waterboys', 'The Little Mermaid')
ORDER BY averageRating DESC
LIMIT 5