SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle NOT IN ('Groundhog Day', 'The Big Sick')
AND startYear <= 2017
AND genres LIKE '%Comedy%'
ORDER BY averageRating DESC
LIMIT 5