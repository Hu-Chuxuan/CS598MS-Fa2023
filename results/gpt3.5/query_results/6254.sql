SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE primaryTitle LIKE '%Princess Diaries%' 
AND titleType = 'movie' 
AND startYear > 2001 
ORDER BY averageRating DESC