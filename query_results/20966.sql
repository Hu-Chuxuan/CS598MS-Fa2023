SELECT * FROM (SELECT tc.*, nr.* FROM titles AS t INNER JOIN ratings AS r ON t.id = r.titleID AND r.userID =? UNION ALL SELECT tc.*, nr.* FROM names AS n INNER JOIN ratingS AS r ON t.nameID = n.nameID AND r.userID =?)