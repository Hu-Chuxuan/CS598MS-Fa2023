SELECT * FROM
-- (SELECT * from title_basics where tconst='movie') as mb
-- INNER JOIN (select * from title_rating where avgrating >.7 AND rating >=.6 ) AS r ON mb.title_id = r.title_id