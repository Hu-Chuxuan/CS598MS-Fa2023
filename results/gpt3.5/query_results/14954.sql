SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'tvSeries' 
AND genres LIKE '%Crime%' 
AND startYear <= 2014
AND primaryTitle NOT IN ('Happy Valley', 'Broadchurch')
ORDER BY averageRating DESC
LIMIT 10