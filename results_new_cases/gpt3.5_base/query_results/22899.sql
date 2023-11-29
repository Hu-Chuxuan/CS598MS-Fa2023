SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Thriller%' OR genres LIKE '%Horror%'
AND startYear > 1980
AND startYear < 2008
AND primaryTitle NOT IN ('Prince of the City', 'No Country for Old Men')
ORDER BY averageRating DESC
LIMIT 5