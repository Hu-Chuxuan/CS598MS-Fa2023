SELECT t.* FROM titles AS t JOIN casts AS c ON t.id = c.titleId WHERE t.isAdult == false AND c.job IN ('Actor') OR c.job IN ('Actress')