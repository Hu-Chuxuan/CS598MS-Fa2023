SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND genres LIKE '%Thriller%' 
AND startYear >= 2010 
AND averageRating >= 8 
AND tconst NOT IN ('tt0209144', 'tt1375666') 
ORDER BY numVotes DESC 
LIMIT 5