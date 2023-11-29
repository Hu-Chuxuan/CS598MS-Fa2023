SELECT primaryTitle 
FROM title_basics 
WHERE tconst IN 
    (SELECT tconst 
     FROM title_ratings 
     WHERE numVotes > 2000 
     ORDER BY averageRating DESC) 
AND genres LIKE '%Horror%' 
AND startYear > 2007 
AND primaryTitle != 'World War Z'
LIMIT 1