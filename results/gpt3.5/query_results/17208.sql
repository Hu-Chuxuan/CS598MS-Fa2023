SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle != 'Skyfall' 
AND primaryTitle != 'Jason Bourne' 
AND primaryTitle != 'Casino Royale'
AND genres LIKE '%Action%'
AND startYear > 2000
ORDER BY averageRating DESC
LIMIT 5