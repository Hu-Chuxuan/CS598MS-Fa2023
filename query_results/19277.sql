SELECT * FROM (
    SELECT DISTINCT(tconst), avgrat AS rated_by, numvots AS voted_for
       , (CASE WHEN numvots = 0 THEN 0 ELSE 1 END) AS seenIt
    FROM `title_rating` WHERE tconst IN ('tt0000001','tt0000002') AND avgrat >= 8 ORDER BY avgrat DESC LIMIT 3
    UNION ALL
     SELECT DISTINCT(tconst), avgrat AS rated_by, numvots AS voted_for
        , CASE WHEN numvots > 0 THEN 1 ELSE 0 END AS seenIt
FROM `title_rating` WHERE tconst NOT IN('tt0000001','tt0000002') AND avgrat <= 8 AND avgrat!= NULL ORDER BY avgrat ASC LIMIT 3 ) AS subqry GROUP BY rated_by,seenIt HAVING COUNT(*)>1
ORDER BY count(*) desc limit 5 offset 0