SELECT primaryTitle, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' 
AND startYear <= 2009 
AND averageRating >= 7 
AND primaryTitle NOT IN ('The Hangover (2009)') 
ORDER BY numVotes DESC 
LIMIT 5