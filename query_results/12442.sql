SELECT * FROM ( SELECT DISTINCT tconst AS MovieID, 
                              PRIMARY_NAME AS Name, 
                              AVERAGE(rating) AS Rating, 
                              COUNT(*) AS NumOfReviews  
                from TITLE_BASES as b  INNER JOIN NAME_BASICS as c ON b.title_type = 'Movie' AND b.primary_name=c.nconst GROUP BY MovieId ) AS movies ORDER by rating DESC LIMIT 8