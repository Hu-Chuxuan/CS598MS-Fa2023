SELECT * FROM
( SELECT DISTINCT tc.*, nc.*, c.*
FROM   title_basic AS tb
INNER JOIN title_rating as tr ON tr.titleId = tb.id
LEFT OUTER JOIN name_basic as nb ON nb.titleID = tb.id AND nb.category = ''
CROSS APPLY ( VALUES ('director','tr.directors') ) d( director )
CROSS APPLY ( VALUES('writer','tr.writers') ) w( writer )