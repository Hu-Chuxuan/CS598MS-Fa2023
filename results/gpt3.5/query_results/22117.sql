SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%' 
AND startYear >= 2000 
AND primaryTitle NOT IN ('Allied (2016)', 'Forever My Girl  (2018)', 'Titanic  (1997)', 'Titanic (2012)', 'Romancing the Stone (1984)')
ORDER BY averageRating DESC 
LIMIT 5