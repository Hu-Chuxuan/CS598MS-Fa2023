SELECT primaryTitle, startYear, runtimeMinutes, genres 
FROM title_basics 
WHERE genres LIKE '%Comedy%' 
AND tconst != 'tt0101452' 
ORDER BY numVotes DESC 
LIMIT 5