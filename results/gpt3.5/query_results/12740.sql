SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear BETWEEN 1980 AND 1990
AND genres LIKE '%Sci-Fi%'
AND primaryTitle NOT IN ('Back to the Future (1985)', 'RoboCop (1987)')
ORDER BY averageRating DESC
LIMIT 5