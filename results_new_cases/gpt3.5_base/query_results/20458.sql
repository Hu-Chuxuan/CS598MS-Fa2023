SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND primaryTitle NOT IN ('Step Brothers', 'Seven Psychopaths', 'The Silence of the Lambs') 
AND startYear >= 1990 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 5