SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Animation%' AND genres LIKE '%Adventure%' 
AND (genres LIKE '%Action%' OR genres LIKE '%Comedy%')
AND startYear > 2010
AND primaryTitle != 'The Lego Movie (2014)'
ORDER BY averageRating DESC
LIMIT 5