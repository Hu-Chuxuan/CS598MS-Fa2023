SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings 
ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND genres LIKE '%Horror%' 
AND startYear > 2010 
AND averageRating > 7 
AND primaryTitle NOT IN ('A Quiet Place (2018)', 'Deadpool 2 (2018)', 'Prisoners (2013)', 'The Silence of the Lambs (1991)')
LIMIT 5