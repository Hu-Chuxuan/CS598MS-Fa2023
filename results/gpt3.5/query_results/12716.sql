SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle != 'Ghostbusters (1984)' 
AND primaryTitle != 'Ghostbusters  (2016)'
AND genres LIKE '%Comedy%' 
AND startYear >= 2010
ORDER BY averageRating DESC
LIMIT 5