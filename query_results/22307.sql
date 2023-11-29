SELECT * FROM 
    (SELECT
        t.*, COUNT(*) AS cnt, RANK() OVER (PARTITION BY t.titleID ORDER BY t.cnt DESC) AS rk
     FROM  
         TITLE t JOIN USER u ON u.id = t.userId GROUP BY t.titleID) q WHERE QUERY_TEXT LIKE '%%'