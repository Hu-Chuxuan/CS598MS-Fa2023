SELECT * FROM
    ( SELECT nconst AS Name, avgrating AS RATINGS, COUNT(*) AS VOTES  
     FROM title_ratings WHERE (AVGRATING BETWEEN? AND? ) GROUP BY NCONST HAVING COUNT(*) >? )
AS rtable JOIN title ON rtable.ntable = title.tconst 