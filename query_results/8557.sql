SELECT * FROM `title_principals` WHERE `job` LIKE '%actor%' AND (`category` IN ('comedy','drama') OR `category` IS NULL)