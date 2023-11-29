SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' 
AND (startYear >= 1980 AND startYear < 1990 OR startYear > 2000)
AND primaryTitle != 'Coming to America (1988)'
ORDER BY averageRating DESC
LIMIT 1