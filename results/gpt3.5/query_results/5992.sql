SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear >= 1990 
AND genres LIKE '%Romance%' 
AND primaryTitle NOT IN ('Four Weddings and a Funeral', 'The Holiday', 'Love Actually', 'You\'ve Got Mail') 
ORDER BY averageRating DESC 
LIMIT 5