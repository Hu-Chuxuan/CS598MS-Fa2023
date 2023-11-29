SELECT * FROM `title` WHERE `primaryTitle` LIKE '%Murder%' OR (`startYear` <= '1990') AND NOT EXISTS(`genre`)
AND (`titleType` = 'Movie')` ORDER BY RANDOM() LIMIT 1