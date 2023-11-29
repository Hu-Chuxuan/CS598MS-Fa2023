SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Thriller%' 
AND startYear >= 2010 
AND startYear <= 2015 
AND primaryTitle != 'The Purge (2013)' 
ORDER BY averageRating DESC
LIMIT 5