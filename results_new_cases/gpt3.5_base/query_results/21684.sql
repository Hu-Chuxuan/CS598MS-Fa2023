SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Drama%' 
AND startYear > 2010 
AND primaryTitle != 'The Great Gatsby' 
AND primaryTitle NOT IN ('The Rock', 'The Hunt for Red October', 'Indiana Jones and the Last Crusade')
ORDER BY averageRating DESC
LIMIT 5