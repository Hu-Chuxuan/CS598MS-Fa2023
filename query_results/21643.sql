SELECT t.* FROM titles AS t JOIN rating_titles RAT ON r.titleId = t.id WHERE RAT.userId IN(1)