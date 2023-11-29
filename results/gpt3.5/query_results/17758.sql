SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Sci-Fi%'
AND startYear > 2010
AND primaryTitle NOT IN ('A Quiet Place (2018)', 'Arrival (2016)')
ORDER BY averageRating DESC
LIMIT 5