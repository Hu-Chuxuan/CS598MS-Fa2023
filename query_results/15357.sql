SELECT DISTINCT
    t.* FROM titles AS t INNER JOIN casts AS c ON t.id = c.titleId WHERE t.type IN ('movie') AND c.category IN('starring','casting')