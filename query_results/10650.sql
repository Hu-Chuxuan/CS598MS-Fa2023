SELECT t.* FROM title_principals AS p INNER JOIN title_casts as c ON(c.title_id = p.title_id AND p.job = 'Actor') WHERE p.category LIKE '%Keanu%'