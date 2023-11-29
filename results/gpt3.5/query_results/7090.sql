SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Psychopath%'
AND startYear > 2010
AND primaryTitle NOT IN ('Seven Psychopaths (2012)', 'Gifted  (2017)')
ORDER BY averageRating DESC
LIMIT 5