SELECT * FROM `title` WHERE `genre` IN ('Horror') AND (`startYear`) <= (NOW() - INTERVAL 1 YEAR)