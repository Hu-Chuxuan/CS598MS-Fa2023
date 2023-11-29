SELECT primaryTitle, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND genres LIKE '%Comedy%' 
AND primaryTitle NOT IN ('Jumanji (1995)', "Ocean's 8 (2018)", 'National Treasure  (2004)')
ORDER BY averageRating DESC
LIMIT 5