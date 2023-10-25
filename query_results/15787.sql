SELECT * FROM (
    SELECT t.*, r.rating AS rating
       , ROUND(r.avg / SUM(r.numvoters), 2) AS avgrating
FROM titles as t
JOIN ratings as r ON t.titleID = r.titleID