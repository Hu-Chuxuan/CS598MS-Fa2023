SELECT primaryTitle, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE startYear >= 2000 
AND genres LIKE '%Romance%' 
AND primaryTitle NOT IN ('The Break-Up (2006)', 'Love Happens', 'Friends  (1993)') 
ORDER BY averageRating DESC 
LIMIT 5