SELECT * FROM `title` WHERE `startYear >= 1900 AND endYear <= 2020` AND (`isAdult = 0 OR isAdult = 1`) ORDER BY `avgRate` DESC LIMIT 5