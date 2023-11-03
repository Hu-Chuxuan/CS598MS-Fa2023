SELECT t.* FROM titles AS t JOIN rating AS r ON t.titleID = r.titleID WHERE r.userID = @userId AND t.isAdult!= "true" ORDER BY avg(r.rating), t.runtimeMinutes