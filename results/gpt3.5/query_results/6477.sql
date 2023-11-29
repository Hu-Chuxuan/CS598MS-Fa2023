SELECT primaryTitle, startYear, genres 
FROM title_basics
WHERE startYear <= 2014  -- SELECT movies released before or in the same year as Cinderella 2015
AND genres LIKE '%Animation%'  -- Narrow down to animated movies
AND runtimeMinutes <= 90  -- SELECT movies with a shorter runtime suitable for a 6 year old boy
AND tconst NOT IN ('tt1661199', 'tt1001526')  -- Exclude Cinderella 2015 and Megamind 2010
ORDER BY averageRating DESC, numVotes DESC  -- Order by average rating and number of votes to prioritize popular and well-rated movies
LIMIT 5