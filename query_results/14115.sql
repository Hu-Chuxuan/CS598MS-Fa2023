SELECT t.* FROM title AS t JOIN name AS n ON t.`primaryTitle` = n.`titleType`, WHERE n.`category` LIKE '%action%' AND n.`birthYear` BETWEEN 1960 AND 2020