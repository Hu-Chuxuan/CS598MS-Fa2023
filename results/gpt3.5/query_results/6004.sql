SELECT primaryTitle, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'tvseries' 
AND genres LIKE '%Action%' 
AND primaryTitle NOT IN ('Jin-Roh: The Wolf Brigade', 'Ninja Scroll (1993)')
ORDER BY averageRating DESC
LIMIT 5