SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' 
AND startYear >= 2010 
AND averageRating >= 8
AND primaryTitle != 'Black Panther'
AND primaryTitle != 'Lost in Translation'
ORDER BY averageRating DESC
LIMIT 5