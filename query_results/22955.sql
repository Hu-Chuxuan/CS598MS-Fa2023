SELECT DISTINCT r.* FROM ratings AS r WHERE rating >= 7 AND genre IN ('Action') ORDER BY avg(rating)