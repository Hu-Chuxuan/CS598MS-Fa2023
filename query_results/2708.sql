SELECT t.titleId FROM title_basic AS t WHERE
(t.primaryTitle LIKE '%No%' OR t.originalTitle LIKE '%No%') AND
(t.startYear BETWEEN 1990 AND 1999) AND
(t.genre IN ('Action-Comedy','SciFi')) GROUP BY t.titleID