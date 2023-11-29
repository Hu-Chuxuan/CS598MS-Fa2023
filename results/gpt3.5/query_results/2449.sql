SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Thriller%' 
AND primaryTitle NOT IN ('Law Abiding Citizen (2009)', 'Copycat  (1995)', 'Gone Girl  (2014)') 
ORDER BY numVotes DESC 
LIMIT 5