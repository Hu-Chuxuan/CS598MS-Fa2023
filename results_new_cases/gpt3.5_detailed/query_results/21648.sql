SELECT primaryTitle 
FROM title_basics 
WHERE tconst IN 
    (SELECT distinct tconst  
     FROM title_principals 
     WHERE nconst IN 
        (SELECT nconst 
         FROM title_principals 
         WHERE tconst = 'tt1801552') 
     AND category = 'actor') 
AND titleType = 'movie' 
AND startYear > 2012 
AND genres LIKE '%Drama%'
ORDER BY averageRating DESC 
LIMIT 5