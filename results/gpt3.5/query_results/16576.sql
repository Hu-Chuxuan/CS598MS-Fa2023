SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings USING (tconst)
WHERE titleType = 'movie' 
AND startYear >= [user's birth year - 20]
AND genres LIKE '%[genre from user's preference history]%'
ORDER BY averageRating DESC
LIMIT 10