SELECT DISTINCT t.* FROM titles AS t LEFT OUTER JOIN ratings AS r ON t.titleID = r.titleID AND r.userID = $userID