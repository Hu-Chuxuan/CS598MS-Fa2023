SELECT DISTINCT t1.* FROM Title_Basics AS t1 INNER JOIN Name_Basic as t2 ON t1.`title_id` = t2.`name_id` WHERE t2.`primaryName` LIKE '%Reese%'