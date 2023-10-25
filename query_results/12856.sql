SELECT * FROM
( SELECT t.*,
       RANK() OVER (PARTITION BY t.primaryTitle ORDER BY avgrating DESC ) AS rank
FROM title_ratings t INNER JOIN
     title_principals p ON t.titleId = p.titleId AND
                         p.category = 'Acting' GROUP BY t.primaryTitle
HAVING COUNT(*) > 1 OR rank < 7
ORDER BY rank DESC LIMIT 6