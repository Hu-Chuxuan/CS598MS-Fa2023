SELECT * FROM `title` WHERE (`primaryTitle` LIKE '%Blocker%') AND (`director` IN ('Kay Cannon')) GROUP BY `genre`