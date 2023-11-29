SELECT primaryTitle, startYear, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Robot%' OR genres LIKE '%AI%' OR primaryTitle LIKE '%Robot%' OR primaryTitle LIKE '%AI%')
OR primaryTitle = 'Never Let Me Go  (2010)' 
OR primaryTitle = 'World War Z ' 
OR primaryTitle = 'Cocoon  (1985)'
ORDER BY averageRating DESC
LIMIT 10