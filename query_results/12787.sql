SELECT t1.* FROM titles AS t1 INNER JOIN rating AS r ON (r.titleId = t1.id) WHERE r.userId IN(107689)