SELECT * 
FROM title_basics 
WHERE genres = 'Comedy' 
AND ( 
   PRIMARY KEY (tconst) 
   IN (SELECT tconst 
       FROM title_ratings 
       WHERE averageRating > 7 
       AND numVotes > 1000 
       AND startYear <= 1994 
       AND endYear >= 1994 
       AND runtimeMinutes <= 120 
       AND (directors = 'Jim Carrey' OR directors = 'Jeff Daniels') 
       ) 
   ) 
   AND NOT EXISTS ( 
      SELECT 1 
      FROM title_ratings 
      WHERE tconst = title_basics.tconst 
      AND rating < 7 
      ) 
ORDER BY startYear DESC