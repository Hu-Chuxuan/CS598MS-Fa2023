SELECT t.titleId FROM titles AS t WHERE
(t.primaryTitle LIKE '%Sherlock%') AND
(t.genre IN ('mystery')) ORDER BY rating DESC LIMIT 5