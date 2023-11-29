SELECT * FROM 
    ( SELECT t.*, COUNT(*) AS cnt 
        FROM title_basic t INNER JOIN 
            ( SELECT r.titleID, AVG(r.rating), SUM(CASE WHEN r.vote = 'upvoted' THEN 1 ELSE 0 END) UPVOTES, SUM(CASE WHEN r.vote = 'downvoted' THEN 1 ELSE 0 END) DOWNVOTES, MIN(r.date) DATE
                FROM rating r WHERE date > CURRENT_DATE() AND r.userid IN ('{user}'::int[] ) GROUP BY r.titleID HAVING UPVOTES >= 1 OR DOWNVOTES <= 0 ORDER BY RAND()) s ON t.primaryTitle=s.titleID 
         LEFT OUTER JOIN 
             ( SELECT r.titleID, AVG(r.rating), SUM(CASE WHEN r.vote = 'upvoted' THEN 1 ELSE 0 END) UPVOTES, SUM(CASE WHEN r.vote = 'downvoted' THEN 1 ELSE 0 END) DOWNVOTES, MIN(r.date) DATE
                   FROM rating r WHERE date < CURRENT_DATE() AND r.userid IN ('{user}'::int[] ) GROUP BY r.titleID HAVING UPVOTES >= 1 OR DOWNVOTES <= 0 ORDER BY RAND()) u ON t.primaryTitle=u.titleID 
     WHERE s.UPVOTES>=1 OR u.DOWNVOTES<=0
GROUP BY t.titleID) d
WHERE d.cnt>0
ORDER BY rand()