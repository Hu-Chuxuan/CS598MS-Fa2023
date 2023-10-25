SELECT * FROM
(select t.* from title_basics as t join cast as c where c.primaryName =? AND t.titleType in ('movie') ) as s inner join 
cast as d INNER JOIN actors ON actors.job=d.category WHERE actors.ordering > 1