SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle NOT IN ('Finding Nemo', 'Schindler\'s List')
AND genres LIKE '%Drama%'
ORDER BY averageRating DESC
LIMIT 5