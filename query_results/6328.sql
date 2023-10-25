SELECT t.titleId FROM titles AS t INNER JOIN ratings AS r ON r.titleId = t.titleId WHERE rating >= '7' AND genre IN ('Drama', 'Mystery') ORDER BY rating DESC LIMIT 6