SELECT t.* FROM titles AS t INNER JOIN rating AS r ON t.titleID = r.titleID AND r.userID = '1' ORDER BY r.averageRATING DESC LIMIT 3