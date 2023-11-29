SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Time Travel%'
AND primaryTitle NOT IN ('Back to the Future (1985)', 'About Time (2013)')
AND startYear > 1980
ORDER BY averageRating DESC
LIMIT 5