SELECT * FROM title_principals AS p WHERE
    p.job = "actress" AND
	(p.characters LIKE '%Matt Damon%' OR
     p.characters LIKE '%Jason Bourne%' OR
     p.characters LIKE '%Neil Burger%' OR
     p.characters LIKE '%Paul Greengrass%') AND
	p.category!= 'Supporting' AND
	p.ordering < 8