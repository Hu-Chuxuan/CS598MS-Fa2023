SELECT primaryTitle 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie' 
AND title_basics.startYear < 1984 
AND title_basics.genres LIKE '%Action%' 
ORDER BY title_ratings.averageRating DESC 
LIMIT 5