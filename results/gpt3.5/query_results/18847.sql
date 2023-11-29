SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND startYear > 1990 
AND genres LIKE '%Action%' 
AND genres LIKE '%Comedy%' 
AND primaryTitle NOT IN ('2001: A Space Travesty (2000)', 'Men in Black II (2002)', 'The Fifth Element', 'Men in Black  (1997)')
ORDER BY averageRating DESC
LIMIT 5