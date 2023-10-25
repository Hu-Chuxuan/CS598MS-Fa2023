SELECT t.titleId FROM titles AS t INNER JOIN ( SELECT t.id, MIN(rating) as rating FROM ratings GROUP BY id ) AS r ON r.title = t.title WHERE t.type LIKE 'drama' AND NOT EXISTS ( SELECT * FROM categories c WHERE c.category IN ('romantic', 'love') AND c.id=r.title )