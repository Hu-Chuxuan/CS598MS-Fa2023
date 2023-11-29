SELECT * FROM (
    SELECT r.*,(SELECT avg(r2.avgrat) FROM ratings AS r2 WHERE r2.rating >= AVG(r.averageRating)) + ((AVG((SELECT r2.numvotes from ratings RATINGS where RATINGS.titleID = RATINGS.titleID AND RATINGS.userid = 1))) / COUNT(*)) AS score
FROM ratings AS r
WHERE r.titleID IN ('tt0000001','tt0000002') ) AS s GROUP BY s.titleID ORDER BY s.score DESC LIMIT 3 OFFSET 0