SELECT primaryTitle, averageRating
FROM title_basics 
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' 
AND title_basics.startYear > 2010 
AND title_basics.primaryTitle NOT IN ('Avengers: Infinity War (2018)', 'Planet of the Apes  (1968)')
ORDER BY averageRating DESC
LIMIT 5