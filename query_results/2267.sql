SELECT t.* FROM title AS t INNER JOIN title_principals AS p ON t.titleId = p.titleId WHERE p.category LIKE '%Horror%' AND p.job IN ('Actor') OR p.job IN('Director')