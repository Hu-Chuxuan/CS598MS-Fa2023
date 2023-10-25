SELECT t1.* FROM (title_ratings AS r INNER JOIN
(title_principals as p ON r.numvotes = p.characters) WHERE
r.primaryname IN ('yes man') AND
r.avgrating >= 6 OR
r.avgrating < 6 AND
r.numvotes > 1000)