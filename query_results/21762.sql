SELECT * FROM `title` WHERE (`primaryTitle` LIKE '%Lord%') AND ((`startYear` BETWEEN 2001 AND 2006)) ORDER BY AVG(rating)