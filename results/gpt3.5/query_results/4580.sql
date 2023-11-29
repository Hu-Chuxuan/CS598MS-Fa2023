SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND primaryTitle != 'The Majestic' 
ORDER BY ABS(runtimeMinutes - (SELECT runtimeMinutes FROM title_basics WHERE primaryTitle = 'The Majestic')) + ABS(startYear - 2001) ASC 
LIMIT 5