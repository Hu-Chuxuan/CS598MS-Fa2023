SELECT t.* FROM title AS t INNER JOIN rating AS r ON t.titleID = r.titleID WHERE r.rating >.8 AND t.category IN ('Comedy') GROUP BY t.titleID ORDER BY COUNT(r.userID), AVG(r.rating)