SELECT * FROM
(SELECT t.*, rr.rating AS rating
FROM titles AS t JOIN ratings AS r ON t.titleID = r.titleID WHERE genre LIKE '%comedy%' AND year BETWEEN '1988' AND '2007') AS rr INNER JOIN names AS n ON n.nameID = rr.primaryName WHERE n.category IN ('actor','actress')