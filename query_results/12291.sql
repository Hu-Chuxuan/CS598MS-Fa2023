SELECT * FROM 
( SELECT TOP 3 title_basics.*,title_ratings.*,name_basics.*,title_crew.*,title_principals.*  
FROM title_basics INNER JOIN 
title_rating ON title_basics.id = title_rating.title_basics_id   
INNER JOIN name_basic ON title_basics.primaryTitle= name_basics.id AND year BETWEEN? AND?   
INNER JOIN title_crew ON title_basics.directorId= title_crews.id    
WHERE NOT EXISTS (SELECT 1 FROM title_principals WHERE title_principals.job IN ('Director','Writer')) ) AS TMP
ORDER BY AVG(title_ratings.averageRatng)