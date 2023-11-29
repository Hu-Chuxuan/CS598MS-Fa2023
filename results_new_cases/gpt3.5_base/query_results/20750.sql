SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%'
AND startYear >= 2000
AND startYear <= 2008
AND primaryTitle != 'The Notebook'
AND primaryTitle != 'Titanic'
ORDER BY averageRating DESC
LIMIT 5