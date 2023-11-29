SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres IN ('Biography', 'Crime', 'Drama', 'History', 'Thriller') 
AND titleType = 'movie' 
AND isAdult = 0 
AND startYear >= 2010 
AND primaryTitle NOT IN ('Pain & Gain (2013)', 'Faster  (2010)', 'Deepwater Horizon  (2016)', 'Deadpool  (2016)') 
AND genres NOT LIKE '%Horror%'
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10