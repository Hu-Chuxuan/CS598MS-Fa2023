SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND genres LIKE '%Action%' 
AND primaryTitle NOT IN ('Star Wars', 'Paycheck', 'Guardians of the Galaxy', 'Jumanji', 'Guardians of the Galaxy Vol. 2') 
ORDER BY averageRating DESC 
LIMIT 5