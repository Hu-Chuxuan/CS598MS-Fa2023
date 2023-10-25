SELECT * FROM
( SELECT t.*, r.*, c.* from title_basics as t INNER JOIN title_ratings as r ON t.titleId = r.titleId LEFT OUTER JOIN cast_list AS cl ON t.titleId=cl.titleID AND cl.castRole='lead actor')
WHERE t.primaryTitle LIKE '%Drama%' OR t.startYear BETWEEN '2006-01-01' AND '2020-12-31' OR t.endYear BETWEEN '2006-01-01' AND '2020-12-31'