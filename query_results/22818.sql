SELECT DISTINCT t.* FROM `title_basics` AS t INNER JOIN `name_basics` AS n ON n.`primaryName` = t.`titleType` AND n.`primaryName` = 'Neve Campbell' WHERE ((t.`startYear` BETWEEN 1980 AND 1990) OR ('Horror')) ORDER BY RAND() LIMIT 5