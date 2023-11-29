SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND startYear >= 1990
AND startYear <= 2005
AND primaryTitle NOT LIKE '%Tully%'
AND primaryTitle != 'American Pie'
AND primaryTitle != 'Groundhog Day'
ORDER BY averageRating DESC
LIMIT 5