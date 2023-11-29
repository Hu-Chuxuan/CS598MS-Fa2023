SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Christmas%' 
AND titleType = 'movie' 
AND startYear <= 2003 
AND primaryTitle NOT IN ('Home Alone', "National Lampoon's Christmas Vacation", 'Elf', 'The Santa Clause') 
ORDER BY averageRating DESC 
LIMIT 5